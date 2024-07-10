class BlogPostsController < ApplicationController
  before_action :blog_post, only: %i[show edit]
  
  def index 
    @blog_posts = BlogPost.all
  end

  def show
  end

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

  def edit
  end

  private

  def blog_post
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end
end