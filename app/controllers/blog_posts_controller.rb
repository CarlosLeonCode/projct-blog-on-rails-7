class BlogPostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :blog_post, only: %i[show edit update destroy]
  
  def index 
    @blog_posts = user_signed_in? ? BlogPost.all.sorted : BlogPost.published.sorted
    @pagy, @blog_posts = pagy(@blog_posts)
  end

  def show; end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to root_path
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @blog_post.destroy
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def blog_post
    @blog_post = user_signed_in? ? BlogPost.find(params[:id]) : BlogPost.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :published_at)
  end

  # What authenticate_user method does
  # def authenticate_user!
  #   redirect_to new_user_session_path, alert: "You must sign in to continue!" unless user_signed_in?
  # end
end
