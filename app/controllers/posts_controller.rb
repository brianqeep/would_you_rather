class PostsController < ApplicationController
    def index
      @posts = Post.all
      render :index
    end
    def new
     @post = Post.new
     render :index
   end
   def create
     @post = Post.new(post_params)
     if @post.save
       redirect_to  posts_path
     else
       render :index
     end
   end

 private
   def post_params
     params.require(:post).permit(:pick)
   end

  end
