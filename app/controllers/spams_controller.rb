class SpamsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    current_user.spam_post(post)

    redirect_to :back
  end

  def destroy
    post = Post.find(params[:post_id])
    current_user.unspam_post(post)

    redirect_to :back
  end
end
