class Link < ActiveRecord::Base
  
  # It should have a path
  validates :path, :presence => true

  # links belong to a topic
  belongs_to :topic
end
