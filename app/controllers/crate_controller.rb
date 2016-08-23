class CrateController < ApplicationController
  def index
  end
  def show
    @categories = Category.all
    @category = Category.find_by_id(params[:id])
    @photos = Photo.where("user_id =?", current_user.id)
    @user = User.find(current_user.id)
  end

  def category
  	@category = Category.find_by_id(params[:id])
  	@photo = Photo.where("category_id= ?", params[:id])
  end	
  def find 
   @photo = Photo.joins(:user).find_by("photo_id = ?",params[:id])
   @user = User.find(@photo.user_id)
    render json: => {:photo => @photo, :user => @user}
  end 
end
