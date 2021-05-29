class SearchController < ApplicationController
  def index
    @posts = policy_scope(Post)
    if params[:query].start_with?('#')
      @hashtags = Tag.where(name: params[:query])
      # @category = Category.where(name: params[:query])
      query  = params[:query].downcase.gsub('#', '')
      @posts = Post.joins(:tags).where(tags: { name: query })
    else
      @posts = Post.where("content like ?", "%#{params[:query]}%")
      @hashtags = Tag.where(name: params[:query])
      # @category = Category.where(name: params[:query])
    end
  end

  # def hashtags
  #   tag = Tag.find_by(name: params[:name])
  #   @posts = tag.posts
  #   authorize @posts
  # end
end
