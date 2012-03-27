class PostsController < ApplicationController
  before_filter :find_post, :only => ['show', 'edit', 'update', 'destroy']
  def index
    @posts = Post.all.reverse
  end
  def show
    #@post = Post.find(params[:id])
  end
  def edit 
    #@post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params[:post])
    if(@post.save)
      flash[:success] = "New post success!"
      redirect_to @post
    else
      render 'new' 
    end
  end
  def update
    #@post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post
    else
      render 'edit' 
    end
  end

  def destroy
    #@post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path 
  end

  private
    def find_post
      @post = Post.find(params[:id])
    end
end
