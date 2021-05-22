class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
  end
  def hashtags
    tag = Tag.find_by(name: params[:name])
    @posts = tag.posts
    authorize @posts
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      redirect_to posts_path
    else
      render 'posts/new'
    end
  end

  def edit
  end

  def update
    @post.update(post_params)

    redirect_to posts_path
  end

  def destroy
    @post.destroy

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
end
