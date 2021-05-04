class SessionsController < ApplicationController

	def new
  end

  def create
    # user = User.where(email: params[:email]).first
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      if params[:remember_me]
          cookies.permanent[:auth_token] = user.auth_token
        else
          cookies[:auth_token] = user.auth_token
        end
        if user.is_admin?
          redirect_to users_path, :notice => "Logged in!"
        else
          redirect_to root_url, :notice => "Logged in!"
        end
      else
        flash.now.alert = "Invalid email or password"
        render "new"
      end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Logged out!"
  end

  def welcome
  end
  
end