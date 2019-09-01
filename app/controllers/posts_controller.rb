class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def index2
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to posts_path
  end

  def create2
    @post = Post.new(title: params[:title])
    @post.save
    redirect_to posts_index2_path
  end

  def new
    @post = Post.new
  end

  def new2
    @post = Post.new
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(content: params[:content])
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
