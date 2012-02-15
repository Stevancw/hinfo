class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :check_user

  private

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def check_user
  	if current_user
  		return true
  	else
  		redirect_to root_path, :notice => "Please login/signup" 
  	end
  end

end
