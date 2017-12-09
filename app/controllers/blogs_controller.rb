class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params.require(:blog).permit(:title, 
                                                  :date, 
                                                  :author, 
                                                  :subject, 
                                                  :body))

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blogs_path, notice: 'Your blog post is now live.' }
      else
        format.html { render :new }
      end
    end
  end

end
