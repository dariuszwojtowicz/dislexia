class CategoriesController < ApplicationController
  before_action :logged_in_user, only: [:show]
  def show
    category_id = params[:id]
    @task = get_task(category_id)
    @category = Category.find(category_id)
  end

  private

    def get_task(category_id)
      user = current_user
      select_sql = "select t.id, t.content, answer, c.content as example 
        from tasks t
        join categories c on t.category_id = c.id
        where category_id = #{category_id} and 
        not exists (select * from user_tasks ut where ut.task_id = t.id and ut.user_id = #{user.id} and ut.success = 1)"
      category_tasks = ActiveRecord::Base.connection.execute select_sql
      category_tasks = category_tasks.to_a  
      return category_tasks[rand(category_tasks.size)]
    end
      
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Proszę się zalogować."
        redirect_to login_url
      end
    end
end


