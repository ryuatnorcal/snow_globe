class MeetupRsvpsPostalizations < ActiveRecord::Base
  attr_accessible :event_id, :rsvp_id
  belongs_to :meetup
  belongs_to :meetup_rsvp
end
