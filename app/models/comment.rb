class Comment < ActiveRecord::Base
  attr_accessible :comment, :date, :id, :postID, :username
  has_many :postalization
  has_many :micropost, :through => :postalization
end
