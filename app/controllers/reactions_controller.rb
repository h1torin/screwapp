class ReactionsController < ApplicationController
  def create
    post = Post.find(params["post_id"])
    reaction = Reaction.create(post_id: params["post_id"], user_id: current_user.id)
    authorize(reaction)
    redirect_to posts_path(anchor: "post-#{post.id}")
  end

  def destroy
    reaction = Reaction.find(params["id"])
    authorize(reaction)
    reaction.destroy
    redirect_to posts_path(anchor: "post-#{reaction.post.id}")
  end
end
