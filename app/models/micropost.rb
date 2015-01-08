class Micropost < ActiveRecord::Base
  attr_accessible :posts, :user_id, :times, :username
   
  belongs_to :user
  belongs_to :devise
  belongs_to :users
  #devise :database_authenticatable
  #def times
  #	posts.times
  #end 
  has_many :postalization,:dependent => :destroy
  has_many :comment, :through => :postalization
  
  attr_accessible :name, :image,:remote_image_url
  mount_uploader :image, ImageUploader
  
end
