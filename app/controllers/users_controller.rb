class UsersController < ApplicationController

  def profile
    @user = current_user
    @posts = current_user.posts.all
    authorize @user
  end
end
