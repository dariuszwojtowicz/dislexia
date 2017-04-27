class TasksController < ApplicationController
  before_action :logged_in_user, only: [:answer]

  def answer
    @task = Task.find(params[:id])
    @category = Category.find(@task.category_id)
    user_answer = params[:user_answer]
    success = correct_answer(@task, user_answer, @category)
    @level = Level.find(@category.level_id)
    @user = current_user
    insert_sql = "insert into user_tasks (user_id, task_id, success, answer, created_at, updated_at) values (#{@user.id}, #{@task.id}, #{success}, '#{user_answer}', now(), now())"
  	ActiveRecord::Base.connection.execute insert_sql
    all_points = user_all_points
    if @user.level == 1 && all_points == 75
      @user.level = 2
      @user.save
    elsif @user.level == 2 && all_points == 125
      @user.level = 3
      @user.save
    elsif @user.level == 3 && all_points == 200
      @user.level = 4
      @user.save
    end
    
    if success == 1
    	flash[:success] = "Poprawna odpowiedź ;)"
    else
    	flash[:danger] = "Zła odpowiedź ;("
    end
    redirect_to root_url
  end


  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Proszę się zalogować."
        redirect_to login_url
      end
    end

    def correct_answer(task, user_answer, category)      
      type = category.name
      task_answer = task.answer
      puts type
      puts task_answer
      puts user_answer
      if type == "find_letters"
        if task_answer == user_answer
        	return 1
        else
        	return 0
        end
      elsif type == "find_words" || type == "erz_arz"
        correct = 1
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        if task_answers.size != user_answers.size
          correct = 0
        end
        user_answers.each do |ua|
          ua.strip!
          ua.downcase!
          if task_answers.index(ua) == nil
            correct = 0
          end
        end
        task_answers.each do |ta|
          if user_answers.index(ta) == nil
            correct = 0
          end
        end
        return correct
      elsif type == "add_endings"
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        if task_answers.size != user_answers.size
          return 0
        end
        used_task_answers = {}
        user_answers.each do |ua|
          ua.strip!
          ua.downcase!
          ua_begin_with_ta = 0
          task_answers.each do |ta|
            if ua.index(ta) == 0 and ua != ta
              used_task_answers[ta] = 1
              ua_begin_with_ta = 1
            end
          end
          if ua_begin_with_ta == 0
            return 0
          end
          select_sql = "select *
            from words
            where words =  'malezja'"
          ua_is_in_db_words = ActiveRecord::Base.connection.execute select_sql
          ua_is_in_db_words = ua_is_in_db_words.to_a  
          if ua_is_in_db_words.size == 0
            return 0
          end
        end
        if used_task_answers.keys.size != 5
          return 0
        end
        return 1
      elsif type == "add_beginnings"
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        if task_answers.size != user_answers.size
          return 0
        end
        used_task_answers = {}
        user_answers.each do |ua|
          ua.strip!
          ua.downcase!
          ua_end_with_ta = 0
          task_answers.each do |ta|
            if ua.end_with?(ta) and ua != ta
              used_task_answers[ta] = 1
              ua_end_with_ta = 1
            end
          end
          if ua_end_with_ta == 0
            return 0
          end
          select_sql = "select *
            from words
            where words =  'malezja'"
          ua_is_in_db_words = ActiveRecord::Base.connection.execute select_sql
          ua_is_in_db_words = ua_is_in_db_words.to_a  
          if ua_is_in_db_words.size == 0
            return 0
          end
        end
        if used_task_answers.keys.size != 5
          return 0
        end
        return 1
      else
      	return 0
      end
    end
end


