class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to admin_url, notice: "You have successfully logged in"
  	else
  		redirect_to login_url, alert: "Password or email are incorect"
  	end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path, notice: "You have successfully logged out"
  end
end
