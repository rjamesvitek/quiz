class Robot < ActiveRecord::Base
	validates :name, :presence => true
	validates :intro, :presence => true
end
