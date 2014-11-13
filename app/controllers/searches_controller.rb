class SearchesController < ApplicationController
  def show
    @posts = Post.where(filters)
  end

  private

  def search_params
    params.permit(:location_id, :category_id)
  end

  def filters
    search_params.slice(:location_id, :category_id)
  end
end
