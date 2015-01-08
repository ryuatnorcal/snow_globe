class Location < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
	belongs_to :devise
	belongs_to :profile

	# GEOCODER 
  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	# PICTURE STUFF
	attr_accessible :name, :image,:remote_image_url
	mount_uploader :image, ImageUploader
end
