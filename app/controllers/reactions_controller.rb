class ReactionsController < ApplicationController
  def create
    reaction = Reaction.create(post_id: params["post_id"], user_id: current_user.id)
    authorize(reaction)
    redirect_to posts_path
  end

  def destroy
    reaction = Reaction.find(params["id"])
    authorize(reaction)
    reaction.destroy
    redirect_to posts_path
  end
end
