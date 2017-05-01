class HomePagesController < ApplicationController	
before_action :logged_in_user, only: [:about, :rankings]
  def home
  	@levels = Level.all
  	@points = get_level_points
  end

  def about
  end

  def rankings
  	select_sql_global = "select COALESCE(sum(l.points), 0) as points, u.login, u.id
      from users u
      left join user_tasks ut on ut.user_id = u.id
      left join tasks t on ut.task_id = t.id
      left join categories c on c.id = t.category_id
      left join levels l on l.id = c.level_id
      group by success, user_id, u.login, u.id
      having success = 1 or success is null
      order by points desc
      limit 10"
    @global_ranking = ActiveRecord::Base.connection.execute select_sql_global
    @global_ranking = @global_ranking.to_a  

    select_sql_month = "select COALESCE(sum(l.points), 0) as points, u.login, u.id, ut.created_at
      from users u
      left join user_tasks ut on ut.user_id = u.id
      left join tasks t on ut.task_id = t.id
      left join categories c on c.id = t.category_id
      left join levels l on l.id = c.level_id
      group by success, user_id, u.login, u.id, ut.created_at
      having (success = 1 or success is null) and EXTRACT(month FROM ut.created_at) = EXTRACT(month FROM CURRENT_DATE)
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
    @month_ranking = @month_ranking[0..9]


    select_sql_day = "select COALESCE(sum(l.points), 0) as points, u.login, u.id, ut.created_at
      from users u
      left join user_tasks ut on ut.user_id = u.id
      left join tasks t on ut.task_id = t.id
      left join categories c on c.id = t.category_id
      left join levels l on l.id = c.level_id
      group by success, user_id, u.login, u.id, ut.created_at
      having (success = 1 or success is null) and EXTRACT(day FROM ut.created_at) = EXTRACT(day FROM CURRENT_DATE)
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
    @day_ranking = @day_ranking[0..9]   
  end
end
