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
