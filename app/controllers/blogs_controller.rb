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

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    
    respond_to do |format|
      if @blog.update(params.require(:blog).permit(:title, 
                                                        :date, 
                                                        :author, 
                                                        :subject, 
                                                        :body))
        format.html { redirect_to blogs_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
