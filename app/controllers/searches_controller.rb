class SearchesController < ApplicationController
  def show
    @posts = Post.where("location_id = ? and category_id = ?", params[:location_id], params[:category_id])
  end
end
