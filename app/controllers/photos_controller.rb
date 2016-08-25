class PhotosController < ApplicationController
  def create
    photo = Photo.new(photo_params)
    if photo.save
      redirect_to crate_path(current_user.id)
    else
      flash[:errors] = photo.errors.full_messages
      redirect_to :back
    end
    end

  def find
    # photo = Photo.find(params[:id])
      render partial: "crate/destroy", locals: { photo: Photo.joins(:user).where("photos.id = ?", params[:id])[0] }
    # @photo = Photo.joins(:user).find(params[:id])
    # render json: @photo
  end

  def destroy
    Photo.find(params[:photo_id]).destroy
    redirect_to :back
  end


  private
  def photo_params
    params.require(:photo).permit(:description, :user_id, :category_id, :title, :avatar)
  end


end
