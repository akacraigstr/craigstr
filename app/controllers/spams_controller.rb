class SpamsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    current_user.spammed_posts.append(post)

    redirect_to :back
  end

  def destroy
    post = Post.find(params[:post_id])
    current_user.spammed_posts.delete post

    redirect_to :back
  end
end
