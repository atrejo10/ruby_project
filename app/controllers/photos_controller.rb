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
    @photo = Photo.joins(:user).find(params[:id])
    render json: @photo
    # format.json { render json: { all_data: {photo: @photo, user: @user}}}
  end


  private
  def photo_params
    params.require(:photo).permit(:description, :user_id, :category_id, :title, :avatar)
  end


end
