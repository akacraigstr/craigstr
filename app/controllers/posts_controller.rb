class PostsController < ApplicationController
  def create
    post = current_user.posts.build(post_params)

    if post.save
      redirect_to current_user
    else
      redirect_to :back
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.delete

    redirect_to :back
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to current_user
    else
      render :back
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :title, :location_id)
  end
end
