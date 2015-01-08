class Profile < ActiveRecord::Base
    attr_accessible :birthday, :firstName, :introduce, :joindate, :lastName, :user_id,:phone,:email 
    attr_accessible :city,:home_trail,:zip,:style,:guear_board,:guear_binder,:guear_boots,:guear_pants
    attr_accessible :guear_jackets,:guear_headwear,:youtube,:vimeo,:meet_up_attended,:meet_up_planning
    attr_accessible :meet_up_absented,:meet_up_canceled,:meet_up_status
    attr_accessible :name, :image,:remote_image_url
    attr_accessible :groupname, :group_id, :event_id
    attr_accessible :user_id, :group_id
    attr_accessible :GNU,:libtech, :Omatic,:Stepchild,:Capita,:Neversummer,:K2,:ForumA, :Rome,:Lamar,:Morrow
    attr_accessible :LTD,:Dragon,:Anon,:Flow,:Four_square,:Forum, :DC, :Dakine,:Grenade,:Celtek,:six_eight_six
    attr_accessible :Airblaster,:Bonfire,:Electric,:Nike_Snowboarding, :RED,:Roxy,:Skullcandy
    attr_accessible :Sessions,:Smith,:Special_Blend,:Thirty_two,:Union,:bentmetal,:Volcom,:Vans
    attr_accessible :Salomon,:One_Ball_Jay,:Nomis,:Billa_Bong,:five_one_five_zero,:Analog
    attr_accessible :Avalanche,:Drake,:Element,:Limited,:Palmer_Snowboards, :Quiksilver
    attr_accessible :Rossignol,:Spyder, :Technine, :Swix,:The_North_Face,:other,:other_detail
    attr_accessible  :Snowboarder,:Skier,:Snowskater,:Other_style,:Other_style_detail
    
    belongs_to :devise
    belongs_to :user
    belongs_to :friend
    belongs_to :location
    belongs_to :gallery
    belongs_to :meetup_profile
    belongs_to :meetup_rsvp
    belongs_to :group_membership
    
    has_many :friendships
    has_many :friends, :through => :friendships
    has_many :users, :through => :friendships
  
    geocoded_by :zip
    after_validation :geocode

mount_uploader :image, ImageUploader
end
