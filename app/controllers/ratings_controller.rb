class RatingsController < ApplicationController

	before_filter :check_user

	def create
		unless already_rated?(params[:link_id], current_user)
			@link = Link.find(params[:link_id])
			@rating = @link.ratings.create
			@rating.user = current_user
			if params[:query] == "bad"
				@rating.vote = false
			else
				@rating.vote = true
			end
			if @rating.save
				redirect_to root_path, :notice => "Done!"
			end
		else
			redirect_to root_url, :notice => "Naughty boy!"
		end
	end

end
