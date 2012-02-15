class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :check_user
  helper_method :already_rated?
  helper_method :get_positive_review_count
  helper_method :get_negative_review_count

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

  def already_rated?(link_id, user)
    ratings = user.ratings
    ratings.each do |rating|
      if rating.link_id == link_id
        return true
      end
    end
    return false
  end

  def get_positive_review_count(link_id)
    link = Link.find(link_id)
    count = link.ratings.where(:vote => true).count
  end

  def get_negative_review_count(link_id)
    link = Link.find(link_id)
    count = link.ratings.where(:vote => false).count
  end

end
