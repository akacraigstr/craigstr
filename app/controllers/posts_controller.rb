class PostsController < ApplicationController
  def create
    current_user.posts << Post.new(post_params)

    if current_user.save
      redirect_to current_user
    else
      redirect_to :back
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
