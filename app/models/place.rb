class Place < ActiveRecord::Base
      attr_accessible :address, :air_bag, :ave_snow_fall, :barrels, :base_elevation 
      attr_accessible :base_snow, :box, :categories, :cell, :channel_gap, :close_hr
      attr_accessible :close_lift_time, :close_lifts, :day_ticket_adult, :day_ticket_adult_hr
      attr_accessible :day_ticket_child, :day_ticket_child_hr, :day_ticket_teen, :day_ticket_teen_hr
      attr_accessible :discription, :gap, :half_pipe, :hip, :holiday, :latitude, :lifts, :longest_run
      attr_accessible :longtitude, :mail_box, :maintainance, :mini_kicker, :night_ticket_adult
      attr_accessible :night_ticket_adult_hr, :night_ticket_child, :night_ticket_child_hr, :night_ticket_teen
      attr_accessible :night_ticket_teen_hr, :note, :open_hr, :open_lift_time, :open_lifts, :park_bench_picnic_table
      attr_accessible :place_id, :quater_pipe, :rail, :rainbow, :rate, :rental_gear, :repaire, :rideable_acres
      attr_accessible :sell, :snowmaking, :spine, :step_down, :step_up, :strome_total, :super_kicker, :table_top
      attr_accessible :tabletop, :terrain_advance, :terrain_beginner, :terrain_expert, :terrain_intermid
      attr_accessible :terrain_park, :terrain_park_lv, :title, :top_elevation, :trail_map, :trails
      attr_accessible :trees, :url, :wall_ride, :wifi
      attr_accessible :phone, :email 
      attr_accessible :open_times_mon,:open_times_tue,:open_times_wed,:open_times_thu
      attr_accessible :open_times_fri,:open_times_sat,:open_times_sun,:close_time_mon,:close_time_tue,:ticket_url
      attr_accessible :close_time_wed,:close_time_thu,:close_time_fri,:close_time_sat,:close_time_sun
      belongs_to :devise
      belongs_to :profile

	# GEOCODER 
      attr_accessible :address, :latitude, :longitude
      geocoded_by :address
      after_validation :geocode, :if => :address_changed?
	
	# PICTURE STUFF
      attr_accessible :name, :image,:remote_image_url
      mount_uploader :image, ImageUploader
      mount_uploader :trail_map, ImageUploader
end
