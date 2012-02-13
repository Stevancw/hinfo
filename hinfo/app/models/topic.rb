class Topic < ActiveRecord::Base

	# it should always have a name
	validates :name, :presence => true
	
	# it has many links
	has_many :links
end
