class ReactionsController < ApplicationController
  def create
    reaction = Reaction.create(post_id: params["post_id"], user_id: current_user.id)
    authorize(reaction)
    redirect_to posts_path
  end

  def destroy
  end
end
