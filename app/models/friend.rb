class Friend < ActiveRecord::Base
  attr_accessible :friend_id
  belongs_to :friendship
  belongs_to :user
	belongs_to :profile
  has_many :friendship,:dependent => :destroy
  has_many :user, :through => :friendship
end
