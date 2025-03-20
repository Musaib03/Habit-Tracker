class ApplicationController < ActionController::Base
  include Authentication
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      redirect_to root_path, alert: "You must be logged in to access the dashboard."
    end
  end
end