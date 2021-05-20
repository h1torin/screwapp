class SearchController < ApplicationController
  def index
    @posts = policy_scope(Post)
    if params[:query].start_with?('#')
      query  = params[:query].gsub('#', '')
      @posts = Post.joins(:tags).where(tags: { name: query })
    else
      @posts = Post.where("content like ?", "%#{params[:query]}%")
    end
  end
end
