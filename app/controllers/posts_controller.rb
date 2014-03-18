class PostsController < ApplicationController
  def index
  	@post = Post.new

  	@posts = Post.all
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save
  	  redirect_to posts_url
  	end
  end

  private

  def post_params
    params.require(:post).permit!    
  end
end
