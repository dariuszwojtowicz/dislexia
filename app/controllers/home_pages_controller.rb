class HomePagesController < ApplicationController
  def home
  	@levels = Level.all
  	@points = get_level_points
  end
end
