class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
  end

  def create
    user = User.authenticate_by(params.permit(:email_address, :password))
    if user
      start_new_session_for(user)
      redirect_to dashboard_path, notice: "Logged in successfully!" # Redirect to dashboard
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "Logged out successfully!"
  end

  private

  def start_new_session_for(user)
    session[:user_id] = user.id
  end

end
