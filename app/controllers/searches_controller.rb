class SearchesController < ApplicationController
  def show
    @posts = Post.query_location_and_category(location_query, category_query)
  end

  private

  def location_query
    params[:location_id]
  end

  def category_query
    params[:category_id]
  end
end
