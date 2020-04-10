class BlogsController < ApplicationController
  def index
  	@blogs=Blog.all#コントローラとview間で使う変数は@つける。全データなので複数形。
  end

  def show
  	@blog=Blog.find(params[:id])
  end

  def new
  	@blog=Blog.new
  end

  def create
  	blog=Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
