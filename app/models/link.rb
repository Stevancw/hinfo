class Link < ActiveRecord::Base
  validates :path, :name, :presence => true
  # validates :path, :uniqueness => true

  belongs_to :topic
  belongs_to :user
  has_many :ratings
end
