class MeetupPostalization < ActiveRecord::Base
  attr_accessible :meetup_comment_id, :meetup_id
	belongs_to :meetup_comment
	belongs_to :meetup
end
