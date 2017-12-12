class PostsController < ApplicationController
  before_action :find_post, :only => [:show, :edit, :delete]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    # index
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    # show
  end

  def edit
    # code here
  end

  def delete
    # code here
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
