class UsersController < ApplicationController

  def profile
    @user = current_user
    @posts = current_user.posts.where(@categories).order(:category_id)
    # @categories = ["Work & Study", "Finance", "Household", "Relationship", "Family", "Friends", "Health", "Leisure", "Other Screws"]
    authorize @user
  end


end
