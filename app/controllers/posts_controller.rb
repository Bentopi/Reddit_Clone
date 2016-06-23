class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id desc")
  end

  def detail

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.link = params[:post][:link]
    @post.author = params[:post][:author]
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

end
