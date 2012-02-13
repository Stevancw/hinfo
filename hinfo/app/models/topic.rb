class Topic < ActiveRecord::Base

	# it should always have a name
	validates :name, :presence => true 


end
