class SearchesController < ApplicationController
  def show
    @posts = Post.where("location_id = ?", params[:location_id])
  end
end
