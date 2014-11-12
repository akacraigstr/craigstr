class PostsController < ApplicationController
  def create
    post = current_user.posts.build(post_params)

    if post.save
      redirect_to current_user
    else
      redirect_to :back
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :title, :location_id)
  end
end
