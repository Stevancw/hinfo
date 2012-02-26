class RatingsController < ApplicationController

    before_filter :check_user
    layout :false
    respond_to :js, :json

    def create
        unless already_rated?(params[:link_id], current_user)
            @link = Link.find(params[:link_id])
            @rating = @link.ratings.create
            @rating.user = current_user
            if params[:query] == "bad"
                @rating.vote = false
                @link.score = @link.score - 5
                @link.save
            else
                @rating.vote = true
                @link.score = @link.score + 5
                @link.save
            end
            if @rating.save
                respond_to do |format|
                  format.js
                end
            end
        else
            redirect_to root_url, :notice => "Naughty boy!"
        end
    end

end
