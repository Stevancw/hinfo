class TopicsController < ApplicationController
  def index
  	@topics = Topic.includes(:links)
  end
end
