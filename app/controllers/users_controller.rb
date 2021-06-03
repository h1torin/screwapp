class UsersController < ApplicationController

  def profile
    @user = current_user
    @posts = current_user.posts.where(@categories).order(:category_id)
    @categories = ["Work and Study", "Finance", "Household", "Relationship", "Family", "Friends", "Health", "Hobby and Leisure"]
    authorize @user
  end


end
