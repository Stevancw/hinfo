class Link < ActiveRecord::Base
  
  # It should have a path and a name
  validates :path, :name, :presence => true

  # the path should be unique
  validates :path, :uniqueness => true

  # links belong to a topic
  belongs_to :topic

  # link belongs to a user
  belongs_to :user
end
