class GroupMembership < ActiveRecord::Base
  attr_accessible :group_id, :user_id
  attr_accessible :groupname
  belongs_to :devise
  belongs_to :meetup_profile
end
