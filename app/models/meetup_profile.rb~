#
# THE MEET UP PROFILE IS A PROFILE FOR EACH PROFILES OF ORGANAIZATIONS 
#
class MeetupProfile < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  attr_accessible :group_id, :groupname, :image, :member_names, :members, :trip_id, :discription,:user_id
    
	belongs_to :profile
	belongs_to :devise
	belongs_to :meetup

	has_many :meetup
	has_many :group_memberships, dependent: :destroy
	#	GRAPHIC THING 
    attr_accessible :name, :image,:remote_image_url
	mount_uploader :image, ImageUploader

	# gEOGRAPHIC THING 
	attr_accessible :address, :latitude, :longitude
  	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
