class LinksController < ApplicationController

  before_filter :check_user 
  
  def new
    @topic = Topic.find(params[:topic_id])
    @link = @topic.links.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @link = @topic.links.create(params[:link])
    @link.user = current_user
    if @link.save
      redirect_to topics_path, :notice => "Link added successfully"
    else
      render :new
    end
  end


end
