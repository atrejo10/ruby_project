class PhotosController < ApplicationController
  def create
    photo = Photo.new(photo_params)
    if photo.save
      redirect_to crate_path(session[:user_id])
    else
      flash[:errors] = photo.errors.full_messages
      redirect_to :back
    end
    end


  private
  def photo_params
    params.require(:photo).permit(:description, :user_id, :category_id, :avatar)
  end


end