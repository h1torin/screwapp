class UsersController < ApplicationController

  def profile
    @user = current_user
    @posts = current_user.posts.all.order(:category_id)
    authorize @user
  end
end
