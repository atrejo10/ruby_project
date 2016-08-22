class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to crate_path(session[:user_id])
    else
      flash[:errors] = ["Invalid"]
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to root_path
   end
end
