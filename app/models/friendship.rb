class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  belongs_to:user
  belongs_to:profile
end
