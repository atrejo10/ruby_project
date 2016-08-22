class UsersController < ApplicationController
  def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to crate_path
  else
    flash[:errors] = user.errors.full_messages
    redirect_to :back
  end
  end


private
def user_params
  params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email, :description)
end
end
