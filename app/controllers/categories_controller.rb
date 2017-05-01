class CategoriesController < ApplicationController
  before_action :logged_in_user, only: [:show]
  def show
    category_id = params[:id]    
    @category = Category.find(category_id)
    @level = Level.find(@category.level_id)
    max_points = 5 * @level.points
    categories_points = get_category_points(@category.level_id)    
    if categories_points[params[:id].to_i] == max_points
      flash[:danger] = "Ta kategoria została ukończona."
      redirect_to "/levels/" + @category.level_id.to_s
      return
    end
    @task = get_task(category_id)
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
end


