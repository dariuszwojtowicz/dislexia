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
      redirect_to "/levels/" + @category.level_id.to_s
    else
    	flash[:danger] = "Zła odpowiedź ;( Spróbuj jeszcze raz ;)"
      redirect_to "/categories/" + @category.id.to_s
    end
  end


  private

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
      elsif type == "find_words_in_words"
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        if user_answers.size != 5
          return 0
        end
        used_users_answers = {}
        user_answers.each do |ua|
          ua.strip!
          ua.downcase!
          if used_users_answers[ua] != nil
            return 0
          end
          used_users_answers[ua] = 1
          ua_equal_ta = 0
          ua_part_of_ta = 0
          task_answers.each do |ta|
            if ua == ta
              ua_equal_ta = 1
            end
            if ta.index(ua) != nil
              ua_part_of_ta = 1
            end
          end
          if ua_equal_ta == 1 || ua_part_of_ta == 0
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
        return 1
      elsif type == "divide_text"
task_answers = task_answer.split(" ")
        user_answers = user_answer.split(" ")
        user_answers.each_with_index do |ua, index|
          ua.strip!
          ua.downcase!
          ua.gsub! ',', ''
          ua.gsub! '.', ''
          ta = task_answers[index]
          ta.strip!
          ta.downcase!          
          if ua != ta
            return 0
          end
        end
        return 1
      elsif type == "syllable"
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        user_answers.each_with_index do |ua, index|
          ua.strip!
          ua.downcase!
          ta = task_answers[index]
          ta.strip!
          ta.downcase!
          ta_syllable = ta.split(" ")
          ua_syllable = ua.split(" ")
          ua_syllable.each_with_index do |uas, index2|
            uas.strip!
            uas.downcase!
            tas = ta_syllable[index2]
            tas.strip!
            tas.downcase!
            if uas != tas
              return 0
            end
          end
        end
        return 1
      elsif type == "remove_words" || type == "fill" || type == "fill_gaps"
        task_answers = task_answer.split(" ")
        user_answers = user_answer.split(" ")
        user_answers.each_with_index do |ua, index|
          ua.strip!
          ua.downcase!
          ta = task_answers[index]
          ta.strip!
          ta.downcase!          
          if ua != ta
            return 0
          end
        end
        return 1
      elsif type == "new_words"
        allowed_letters = {}
        user_answers = user_answer.split(",")
        if user_answers.size != 5
          return 0
        end
        task_answer.split("").each do |letter|
          allowed_letters[letter] = 1
        end

        used_users_answers = {}
        user_answers.each do |ua|
          ua.strip!
          ua.downcase!
          if used_users_answers[ua] != nil
            return 0
          end
          used_users_answers[ua] = 1
          
          ua.split("").each do |ua_letter|
            if allowed_letters[ua_letter] == nil
              return 0
            end
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
        return 1
      elsif type == "rz_r" || type == "z_g"
        task_answers = task_answer.split(",")
        user_answer.strip!
        user_answer.downcase!
        task_answers.each do |ta|
          ta.strip!
          ta.downcase!
          if user_answer == ta
            return 1
          end
        end
        return 0
      elsif type == "order"
        task_answers = task_answer.split(",")
        user_answers = user_answer.split(",")
        user_answers.each_with_index do |ua, index|
          ua.strip!
          ua.downcase!
          ta = task_answers[index]
          ta.strip!
          ta.downcase!          
          if ua != ta
            return 0
          end
        end
        return 1
      else
      	return 0
      end
    end
end


