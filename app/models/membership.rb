class Membership < ActiveRecord::Base
  attr_accessible :micropost_id, :user_id
  belong_to :user
  belong_to :micropost
end
