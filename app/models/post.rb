class Post < ActiveRecord::Base
	attr_accessible :msg, :name
	validates :name, :presence => true
	validates :msg, :presence => true
end
