class UsersController < ApplicationController


	def show
		@user = User.find(params[:id])
		screen = "stevancw"
	end
end