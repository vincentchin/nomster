class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :photo

	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :address, :presence => true
	validates :description, :presence => true
end
