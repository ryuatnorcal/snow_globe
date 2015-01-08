class MeetupRsvp < ActiveRecord::Base
  attr_accessible :attend, :comment, :event_id, :rsvp, :user_id, :rsvp_id,:title,:id
  attr_accessible :groupname,:group_id,:event_id 
  belongs_to :meetup
  belongs_to :profile
  belongs_to :meetup_rsvps_postalization
  belongs_to :meetup_profile
  
  has_many :meetup_rsvps_postalization
  has_many :meetup, :through => :meetup_rsvps_postalization
end
