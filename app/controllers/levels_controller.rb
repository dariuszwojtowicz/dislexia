class LevelsController < ApplicationController
  before_action :logged_in_user, only: [:show]

  def show
  	if params[:id].to_s != current_user.level.to_s
  		flash[:danger] = "Ten poziom jest zablokowany."
     	redirect_to root_url
  	end
  	@categories = Category.where(level_id: params[:id])
  	@level = Level.find(params[:id])
    @points = get_category_points(@level.id)
  end

end
