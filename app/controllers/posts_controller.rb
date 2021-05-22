class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :require_same_user, only: [:edit, :udpate, :destroy]

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
    @comment = Comment.new
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @posts = tag.posts
    authorize @posts
  end

  def new
    @post = Post.new
    # @comment = Comment.new(post_id: params[:post_id])
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      flash[:success] = "Post successfully added."
      redirect_to posts_path
    else
      render 'posts/new'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post successfully updated."
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:danger] = "Post successfully deleted."
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:content, :category_id, :hide_user, :hide_content, :id_user, :photo)
  end

  def require_same_user
    if current_user != @post.user and !current_user.admin
      flash[:danger] = "You can only edit or delete your own posts"
      redirect_to posts_path
    end
  end
end
