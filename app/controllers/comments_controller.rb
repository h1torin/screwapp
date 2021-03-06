class CommentsController < ApplicationController

  def index
    @comments = Comment.includes(post)
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      if @comment.user != @comment.post.user
        notification = Notification.create(event: "New Comment by #{@comment.user.nickname}")
        notification.update(comment: @comment, user: @comment.post.user)
        # raise
        # NotificationsChannel.broadcast_to(@comment.post.user, render_to_string(partial: 'notifications/notification', locals: { notification: notification }))
        # NotificationsChannel.broadcast_to(@comment.post.user, notification.event)
        @counter = Notification.where(user: @comment.post.user).where(status: false).count
        ActionCable.server.broadcast("general", "#{@counter}")
      end
      redirect_to post_path(@post)
    else
      render 'new'
    end
    authorize(@comment)
  end

  # def destroy
  #   @comment = Comment.find(params[:id])
  #   authorize(comment)
  #   comment.destroy
  #   redirect_to posts_path
  # end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
