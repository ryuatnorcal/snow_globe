class MeetupComment < ActiveRecord::Base
  attr_accessible :comment, :event_id, :user_id, :username
  # belongs
  belongs_to :devise
  belongs_to :meetup
  belongs_to :profile
  # Has_many
  has_many :meetup_postalization
  has_many :meetup,:through =>:meetup_postalization
end
