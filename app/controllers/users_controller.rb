class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :show]
  before_action :correct_user,   only: [:edit, :update]

  def show
    day_select_sql = "select *
      from day_master
      where day = '#{Date.yesterday.to_s}'"
    yesterday_master = ActiveRecord::Base.connection.execute day_select_sql
    yesterday_master = yesterday_master.to_a  
    if yesterday_master.size == 0
      day_insert_sql = "insert into day_master (name, day) values ('#{best_yesterday}', '#{Date.yesterday.to_s}')"
      ActiveRecord::Base.connection.execute day_insert_sql
    end

    month_select_sql = "select *
      from month_master
      where day = '#{Time.now.month - 1}'"
    last_month_master = ActiveRecord::Base.connection.execute month_select_sql
    last_month_master = last_month_master.to_a  
    if last_month_master.size == 0
      month_insert_sql = "insert into month_master (name, day) values ('#{best_last_month}', '#{Time.now.month - 1}')"
      ActiveRecord::Base.connection.execute month_insert_sql
    end

    @user = User.find(params[:id])

    day_orders_sql = "select *
      from day_master
      where name = '#{@user.login}'"
    day_orders = ActiveRecord::Base.connection.execute day_orders_sql
    day_orders = day_orders.to_a  
    @day_orders_count = day_orders.size

    month_orders_sql = "select *
      from month_master
      where name = '#{@user.login}'"
    month_orders = ActiveRecord::Base.connection.execute month_orders_sql
    month_orders = month_orders.to_a  
    @month_orders_count = month_orders.size
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.level = 1
    if @user.save
      log_in @user
      flash[:success] = "Witamy w aplikacji Dislexia!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    updateParams = user_params
    updateParams.delete(:password) if updateParams[:password].blank?
    updateParams.delete(:password_confirmation) if updateParams[:password].blank?
    if @user.update_attributes(updateParams)
      flash[:success] = "Zmiany zapisane"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def best_yesterday
      select_sql_day = "select COALESCE(sum(l.points), 0) as points, u.login, u.id, ut.created_at
        from users u
        left join user_tasks ut on ut.user_id = u.id
        left join tasks t on ut.task_id = t.id
        left join categories c on c.id = t.category_id
        left join levels l on l.id = c.level_id
        group by success, user_id, u.login, u.id, ut.created_at
        having (success = 1 or success is null) and EXTRACT(day FROM ut.created_at) = EXTRACT(day FROM (CURRENT_DATE - interval '1 day'))
        order by points desc
        limit 10"
      @day_ranking_temp = ActiveRecord::Base.connection.execute select_sql_day
      @day_ranking_temp = @day_ranking_temp.to_a 
      @day_ranking_hash = {}
      @day_ranking_temp.each do |row|
        if @day_ranking_hash[row["login"]] == nil
          @day_ranking_hash[row["login"]] = { "points" => 0, "id" => row["id"] }
        end
        @day_ranking_hash[row["login"]]["points"] += row["points"]
      end    
      @day_ranking = []
      @day_ranking_hash.each do |key, value|
        @day_ranking.push({ "login" => key, "points" => value["points"], "id" => value["id"] })
      end
      @day_ranking.sort_by { |row| row["points"] } 
      return @day_ranking[0] != nil ? @day_ranking[0]["login"] : 0
    end

    def best_last_month
      select_sql_month = "select COALESCE(sum(l.points), 0) as points, u.login, u.id, ut.created_at
      from users u
      left join user_tasks ut on ut.user_id = u.id
      left join tasks t on ut.task_id = t.id
      left join categories c on c.id = t.category_id
      left join levels l on l.id = c.level_id
      group by success, user_id, u.login, u.id, ut.created_at
      having (success = 1 or success is null) and EXTRACT(month FROM ut.created_at) = EXTRACT(month FROM CURRENT_DATE) - 1
      order by points desc
      limit 10"
      @month_ranking_temp = ActiveRecord::Base.connection.execute select_sql_month
      @month_ranking_temp = @month_ranking_temp.to_a 
      @month_ranking_hash = {}
      @month_ranking_temp.each do |row|
        if @month_ranking_hash[row["login"]] == nil
          @month_ranking_hash[row["login"]] = { "points" => 0, "id" => row["id"] }
        end
        @month_ranking_hash[row["login"]]["points"] += row["points"]
      end    
      @month_ranking = []
      @month_ranking_hash.each do |key, value|
        @month_ranking.push({ "login" => key, "points" => value["points"], "id" => value["id"] })
      end
      @month_ranking.sort_by { |row| row["points"] } 
      return @month_ranking[0] != nil ? @month_ranking[0]["login"] : 0
    end

    def user_params
      params.require(:user).permit(:login, :name, :surname, :year, :email, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
