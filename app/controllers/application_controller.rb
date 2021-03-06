class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :ensure_user
  before_filter :ensure_manager

  # before_filter :set_timezone 

  # def set_timezone  
  #  min = request.cookies["time_zone"].to_i
  #  Time.zone = ActiveSupport::TimeZone[-min.minutes]
  # end
  
private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #@current_user ||= User.find(35)   
  end

  helper_method :current_user

  def ensure_user
    redirect_to root_url unless current_user
  end

  def ensure_manager
    redirect_to main_path unless current_user.is_management?
  end

end
