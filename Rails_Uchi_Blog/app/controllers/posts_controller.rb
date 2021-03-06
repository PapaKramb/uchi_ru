class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def show;end

  def new
    if user_signed_in?
      @post = Post.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit;end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
