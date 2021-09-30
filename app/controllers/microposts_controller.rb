class MicropostsController < ApplicationController
  def new
    @post = Micropost.new
  end

  def create
    @post = Micropost.new(post_params)
    @post.save
    redirect_to root_path
  end

  def show
    @post = Micropost.find(params[:id])
  end

  def edit
    @post = Micropost.find(params[:id])
  end

  def update
    @post = Micropost.find(params[:id])
    @post.update(post_params)
    redirect_to micropost_path(@post.id)
  end
  private

  def post_params
    params.require(:micropost).permit(:content, :image)
  end
end
