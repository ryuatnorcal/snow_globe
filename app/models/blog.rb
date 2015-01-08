class Blog < ActiveRecord::Base
  attr_accessible :article, :id, :time, :title
end
