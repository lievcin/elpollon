class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :ensure_user

private

  def current_user
    #@current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user ||= User.find(11)
  end
  helper_method :current_user

  def ensure_user
    redirect_to root_url unless current_user
  end

  def set_user_time_zone
    Time.zone = current_user.time_zone if user_signed_in?
  end
    
end
