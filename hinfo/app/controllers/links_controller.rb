class LinksController < ApplicationController
  
  def new
    @topic = Topic.find(params[:topic_id])
    @link = @topic.links.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @link = @topic.links.create(params[:link])
    if @link.save
      redirect_to topics_path
    else
      render :new
    end
  end
end
