class CrateController < ApplicationController
  def index
  end
  def show
    @categories = Category.all
    @photos = Photo.where("user_id =?", current_user.id)
    @user = User.find(current_user.id)
  end
  
  def category
  end
end
