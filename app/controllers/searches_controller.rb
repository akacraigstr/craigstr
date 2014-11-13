class SearchesController < ApplicationController
  def show
    @posts = Post.where(search_params.slice(:location_id, :category_id))
  end

  private

  def search_params
    params.permit(:location_id, :category_id)
  end
end
