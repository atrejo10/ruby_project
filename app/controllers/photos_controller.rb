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
    puts 'hello'
    @photo = Photo.joins(:user).find(params[:id])
    render json: @photo
  end


  private
  def photo_params
    params.require(:photo).permit(:description, :user_id, :category_id, :avatar)
  end


end
