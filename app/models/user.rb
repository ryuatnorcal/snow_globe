class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :confirmable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username,:email, :password, :password_confirmation
  # attr_accessible :title, :body
  belongs_to :friend
  belongs_to :friendship
  belongs_to :profile
  
  has_many :comment,:dependent => :destroy
  has_many :meetup_comment,:dependent => :destroy
  has_many :meetup_rsvp,:dependent => :destroy
  has_many :micropost,:dependent => :destroy
  has_many :blog
  has_one :profile,:dependent => :destroy
  has_many :friendship,:dependent => :destroy
  has_many :friend, :through => :friendship 
  
	
end
