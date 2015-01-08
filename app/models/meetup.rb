class Meetup < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
attr_accessible :address,:latitude,:longitude,:cost, :country, :date, :discription, :distination, :location, :organaizer_id, :organaizer_name, :state, :title,:event_id
  attr_accessible :rsvp_id,:rsvp,:id,:group_id,:group_name, :groupname,:attend
  attr_accessible :organaizer_id, :organaizer_username, :coorganaizer_id, :coorganaizer_username 
  # Belongs 
  belongs_to :devise
  belongs_to :location
  belongs_to :profile
  belongs_to :meetup_profile #	THIS LINE DIDNT WORK 

  # Has many
  has_many :meetup_comment
  has_many :meetup_rsvp
  has_many :meetup_profile
#	has_many :meetup_rsvps_postalization 
#	has_many :meetup_rsvp, :through => :meetup_rsvps_postalization
  # Geocoder 
  geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	attr_accessible :name, :image,:remote_image_url
	mount_uploader :image, ImageUploader
end
