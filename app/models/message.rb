class Message < ActiveRecord::Base
  attr_accessible :message, :reciver_id, :sender_id, :title
end
