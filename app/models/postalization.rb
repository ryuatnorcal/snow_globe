class Postalization < ActiveRecord::Base
  attr_accessible :comment_id, :micropost_id
  belongs_to :comment
  belongs_to :micropost
end
