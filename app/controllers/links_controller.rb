class LinksController < ApplicationController

  before_filter :check_user 
  layout :false
  respond_to :js, :json
  
  def new
    @topic = Topic.find(params[:topic_id])
    @link = @topic.links.new
  end

  def create

    @topic = Topic.find(params[:link][:topic_id])

    # what should the score be
    if @topic.links.count < 5
      score = 0
    else
      last_link = @topic.links.order('score DESC').offset(4).first
      score = (last_link.score - 12)
    end

    # create the link
    @link = @topic.links.create(params[:link])
    @link.user = current_user
    @link.score = score
    if @link.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  def clicked
    @link = Link.find(params[:id])
    @link.score = @link.score + 1
    @link.save
    render :nothing => true
  end


end
