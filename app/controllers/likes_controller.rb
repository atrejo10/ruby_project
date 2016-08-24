class LikesController < ApplicationController
  def create
  Like.create(user_id: params[:user_id], photo_id: params[:photo_id])
  redirect_to :back
  end

  def destroy
    like = Like.find_by("photo_id = ?", params[:photo_id])
    like.destroy
    redirect_to :back
  end

end
