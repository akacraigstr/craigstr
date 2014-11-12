class SearchesController < ApplicationController
  def new
    @locations = Location.all
    @categories = Category.all
  end

  def show
    @posts = Post.where("location_id = params[:location_search]" && "category_id = params[:category_search]")
  end

end
