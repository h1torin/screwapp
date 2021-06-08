class ReactionsController < ApplicationController
  def create
    post = Post.find(params["post_id"])
    reaction = Reaction.create(post_id: params["post_id"], user_id: current_user.id)
    if reaction.save
      if reaction.user != reaction.post.user
        notification = Notification.create(event: "New Like")
        notification.update(user: reaction.post.user, reaction: reaction)
        @counter = Notification.where(user: @reaction.post.user).where(status: false).count
        ActionCable.server.broadcast("general", "#{@counter}")
      end
      redirect_to post_path(@post)
    else
      render 'new'
    end
    authorize(reaction)

    if params["origin"] == "index"
      redirect_to posts_path(anchor: "post-#{post.id}")
    else
      redirect_to post_path(post, anchor: "post-#{post.id}")
    end
  end

  def destroy
    reaction = Reaction.find(params["id"]) 
    post = reaction.post
    authorize(reaction)
    reaction.destroy
    if params["origin"] == "index"
      redirect_to posts_path(anchor: "post-#{post.id}")
    else
      redirect_to post_path(post, anchor: "post-#{post.id}")
    end
  end
end
