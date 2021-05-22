class CommentsController < ApplicationController
  def create
    raise
    reaction = Comment.create(post_id: params["post_id"], user_id: current_user.id, content: params[""])
    #   authorize(reaction)
    #   redirect_to posts_path
  end

  def destroy
    #   reaction = Reaction.find(params["id"])
    #   authorize(reaction)
    #   reaction.destroy
    #   redirect_to posts_path
  end
end
