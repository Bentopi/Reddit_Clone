class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id desc")
  end

  def detail
    @post = Post.find_by id: params[:id]
    @comment = Comment.new
    @comments = Comment.all.order("created_at desc")
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
  def create_comment
    @post = Post.find_by id: params[:id]
    @comment = Comment.new
    @comment.body = params[:comment][:body]
    @comment.author = params[:comment][:author]
    @comment.post_id = @post.id
    if @comment.save
      redirect_to post_path(id: @post.id)
    else
      render :detail
    end
  end
end
