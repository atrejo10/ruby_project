class CrateController < ApplicationController
  def index
  end
  def show
    @categories = Category.all
    @photos = Photo.all
  end
end
