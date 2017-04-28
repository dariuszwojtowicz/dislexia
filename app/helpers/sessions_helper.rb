module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Proszę się zalogować."
      redirect_to login_url
    end
  end

  def get_level_points
    user = current_user
    if user == nil
      return 0
    end
    points = {}
    select_sql = "select l.id, sum(l.points)
      from user_tasks ut
      join tasks t on ut.task_id = t.id
      join categories c on c.id = t.category_id
      join levels l on l.id = c.level_id
      group by l.id, success, user_id
      having success = 1 and user_id = #{user.id}
      order by l.id"
    db_points = ActiveRecord::Base.connection.execute select_sql
    db_points = db_points.to_a  
    db_points.each do |row|
      points[row["id"]] = row["sum"]
    end
    return points 
  end

  def user_all_points(user = current_user)
    if user == nil
      user = current_user
    end
    if user == nil
      return 0
    end
    select_sql = "select sum(l.points)
      from user_tasks ut
      join tasks t on ut.task_id = t.id
      join categories c on c.id = t.category_id
      join levels l on l.id = c.level_id
      group by success, user_id
      having success = 1 and user_id = #{user.id}"
    db_points = ActiveRecord::Base.connection.execute select_sql
    db_points = db_points.to_a 
    if db_points.size == 0
      return 0
    end
    return db_points[0]["sum"] 
  end

  def get_category_points(level_id)
    user = current_user
    if user == nil
      return {}
    end
    points = {}
    select_sql = "select c.id, sum(l.points)
      from user_tasks ut
      join tasks t on ut.task_id = t.id
      join categories c on c.id = t.category_id
      join levels l on l.id = c.level_id
      group by c.id, success, user_id, l.id
      having success = 1 and user_id = #{user.id} and l.id = #{level_id}
      order by c.id"
    db_points = ActiveRecord::Base.connection.execute select_sql
    db_points = db_points.to_a 
    db_points.each do |row|
      points[row["id"]] = row["sum"]
    end
    return points 
  end

  def current_user?(user)
    user == current_user
  end

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
  	forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end