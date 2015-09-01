class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user

  public
    def authorize
    if current_user.nil?
      redirect_to login_url, alert: "Not authorized! Please log in."
    else
      if @trip && @trip.user != current_user
        redirect_to root_path, alert: "Not authorized! Only #{@post.user} has access to this post."
      end
    end
  end

end


 