class ApplicationController < ActionController::Base
	private

  def current_user
  	# @current_user ||= User.find(session[:user_id]) if session[:user_id]
  	@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  helper_method :current_user

  def authorize
  	redirect_to login_url, alert: "Not Authorized" if current_user.nil?
  end
end
