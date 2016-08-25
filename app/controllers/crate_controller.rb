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
  	@photo = Photo.joins(:user).where("category_id= ?", params[:id])
  end

  def find
     photo = Photo.find(params[:id])
    if photo.users_liked.include? current_user
      render partial: "crate/unlike", locals: { photo: Photo.joins(:user).select(:first_name, "photos.description", "photos.id", :title, :last_name).where("photos.id = ?", params[:id])[0] }
    else
      render partial: "crate/like", locals: { photo: Photo.joins(:user).select(:first_name, "photos.description", "photos.id", :title, :last_name).where("photos.id = ?", params[:id])[0] }
    end
  end
end
