class LevelsController < ApplicationController
  before_action :logged_in_user, only: [:show]

  def show
  	@categories = Category.where(level_id: params[:id])
  	@level = Level.find(params[:id])
    @points = get_category_points(@level.id)
  end

  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Proszę się zalogować."
        redirect_to login_url
      end
    end

end
