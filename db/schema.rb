# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130124224112) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "article"
    t.date     "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "username"
    t.text     "comment"
    t.datetime "date"
    t.integer  "postID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.datetime "post_time"
  end

  create_table "friends", :force => true do |t|
    t.integer  "friend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "galleries", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  create_table "group_memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "groupname"
  end

  create_table "images", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  create_table "meetup_attendances", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetup_comments", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "username"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetup_postalizations", :force => true do |t|
    t.integer  "meetup_id"
    t.integer  "meetup_comment_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "meetup_profiles", :force => true do |t|
    t.string   "groupname"
    t.integer  "group_id"
    t.string   "image"
    t.integer  "trip_id"
    t.integer  "members"
    t.string   "member_names"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "organaizer_username"
    t.integer  "organaizer_id"
    t.string   "coorganaizer_username"
    t.integer  "coorganaizer_id"
    t.string   "discription"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "meetup_rsvps", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.boolean  "rsvp"
    t.boolean  "attend"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "username"
  end

  create_table "meetup_rsvps_postalizations", :force => true do |t|
    t.integer  "event_id"
    t.integer  "rsvp_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetups", :force => true do |t|
    t.string   "location"
    t.string   "state"
    t.string   "country"
    t.datetime "date"
    t.text     "discription"
    t.integer  "cost"
    t.string   "title"
    t.integer  "organaizer_id"
    t.string   "organaizer_name"
    t.string   "distination"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "group_id"
    t.string   "group_name"
    t.string   "groupname"
    t.string   "image"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "micropost_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "reciver_id"
    t.string   "title"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.integer  "user_id"
    t.text     "posts"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "username"
    t.datetime "post_time"
    t.string   "image"
  end

  create_table "paintings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
    t.string   "username"
    t.integer  "user_id"
  end

  create_table "places", :force => true do |t|
    t.integer  "place_id"
    t.string   "address"
    t.float    "latitude"
    t.string   "categories"
    t.string   "title"
    t.text     "discription"
    t.integer  "rate"
    t.string   "url"
    t.datetime "open_hr"
    t.datetime "close_hr"
    t.boolean  "sell"
    t.boolean  "repaire"
    t.boolean  "maintainance"
    t.integer  "ave_snow_fall"
    t.integer  "top_elevation"
    t.integer  "base_elevation"
    t.integer  "rideable_acres"
    t.integer  "lifts"
    t.integer  "open_lifts"
    t.integer  "close_lifts"
    t.datetime "open_lift_time"
    t.datetime "close_lift_time"
    t.integer  "trails"
    t.integer  "longest_run"
    t.integer  "terrain_beginner"
    t.integer  "terrain_intermid"
    t.integer  "terrain_advance"
    t.integer  "terrain_expert"
    t.boolean  "snowmaking"
    t.string   "trail_map"
    t.integer  "base_snow"
    t.integer  "strome_total"
    t.boolean  "terrain_park"
    t.integer  "terrain_park_lv"
    t.boolean  "rail"
    t.boolean  "box"
    t.boolean  "table_top"
    t.boolean  "trees"
    t.boolean  "park_bench_picnic_table"
    t.boolean  "mail_box"
    t.boolean  "wall_ride"
    t.boolean  "barrels"
    t.boolean  "rainbow"
    t.boolean  "tabletop"
    t.boolean  "step_down"
    t.boolean  "step_up"
    t.boolean  "gap"
    t.boolean  "hip"
    t.boolean  "spine"
    t.boolean  "super_kicker"
    t.boolean  "mini_kicker"
    t.boolean  "channel_gap"
    t.boolean  "half_pipe"
    t.boolean  "quater_pipe"
    t.boolean  "air_bag"
    t.integer  "day_ticket_adult"
    t.integer  "day_ticket_adult_hr"
    t.integer  "night_ticket_adult"
    t.integer  "night_ticket_adult_hr"
    t.integer  "day_ticket_teen"
    t.integer  "day_ticket_teen_hr"
    t.integer  "night_ticket_teen"
    t.integer  "night_ticket_teen_hr"
    t.integer  "day_ticket_child"
    t.integer  "day_ticket_child_hr"
    t.integer  "night_ticket_child"
    t.integer  "night_ticket_child_hr"
    t.datetime "holiday"
    t.text     "note"
    t.boolean  "wifi"
    t.string   "cell"
    t.boolean  "rental_gear"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "image"
    t.string   "phone"
    t.string   "email"
    t.time     "open_times_mon"
    t.time     "open_times_tue"
    t.time     "open_times_wed"
    t.time     "open_times_thu"
    t.time     "open_times_fri"
    t.time     "open_times_sat"
    t.time     "open_times_sun"
    t.time     "close_time_mon"
    t.time     "close_time_tue"
    t.time     "close_time_wed"
    t.time     "close_time_thu"
    t.time     "close_time_fri"
    t.time     "close_time_sat"
    t.time     "close_time_sun"
    t.float    "longitude"
    t.string   "ticket_url"
  end

  create_table "post_comments", :force => true do |t|
    t.string   "username"
    t.integer  "postID"
    t.text     "comment"
    t.datetime "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postalizations", :force => true do |t|
    t.integer  "micropost_id"
    t.integer  "comment_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "firstName"
    t.string   "lastName"
    t.date     "birthday"
    t.text     "introduce"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "userName"
    t.string   "home_trail"
    t.string   "zip"
    t.string   "guear_board"
    t.string   "guear_binder"
    t.string   "guear_boots"
    t.string   "guear_pants"
    t.string   "guear_jackets"
    t.string   "guear_headwear"
    t.string   "youtube"
    t.string   "vimeo"
    t.boolean  "meet_up_attended"
    t.boolean  "meet_up_planning"
    t.boolean  "meet_up_absented"
    t.boolean  "meet_up_canceled"
    t.string   "meet_up_status"
    t.string   "style"
    t.string   "city"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "image"
    t.boolean  "group_organaizer"
    t.boolean  "group_coorganaizer"
    t.integer  "belongs_group_at"
    t.string   "phone"
    t.string   "email"
    t.boolean  "GNU"
    t.boolean  "libtech"
    t.boolean  "Omatic"
    t.boolean  "Stepchild"
    t.boolean  "Capita"
    t.boolean  "Neversummer"
    t.boolean  "K2"
    t.boolean  "ForumA"
    t.boolean  "Rome"
    t.boolean  "Lamar"
    t.boolean  "Morrow"
    t.boolean  "LTD"
    t.boolean  "Dragon"
    t.boolean  "Anon"
    t.boolean  "Flow"
    t.boolean  "Four_square"
    t.boolean  "Forum"
    t.boolean  "DC"
    t.boolean  "Dakine"
    t.boolean  "Grenade"
    t.boolean  "Celtek"
    t.boolean  "six_eight_six"
    t.boolean  "Airblaster"
    t.boolean  "Bonfire"
    t.boolean  "Electric"
    t.boolean  "Nike_Snowboarding"
    t.boolean  "RED"
    t.boolean  "Roxy"
    t.boolean  "Skullcandy"
    t.boolean  "Sessions"
    t.boolean  "Smith"
    t.boolean  "Special_Blend"
    t.boolean  "Thirty_two"
    t.boolean  "Union"
    t.boolean  "bentmetal"
    t.boolean  "Volcom"
    t.boolean  "Vans"
    t.boolean  "Salomon"
    t.boolean  "One_Ball_Jay"
    t.boolean  "Nomis"
    t.boolean  "Billa_Bong"
    t.boolean  "five_one_five_zero"
    t.boolean  "Analog"
    t.boolean  "Avalanche"
    t.boolean  "Drake"
    t.boolean  "Element"
    t.boolean  "Limited"
    t.boolean  "Palmer_Snowboards"
    t.boolean  "Quiksilver"
    t.boolean  "Rossignol"
    t.boolean  "Spyder"
    t.boolean  "Technine"
    t.boolean  "Swix"
    t.boolean  "The_North_Face"
    t.boolean  "other"
    t.string   "other_detail"
    t.boolean  "Snowboarder"
    t.boolean  "Skier"
    t.boolean  "Snowskater"
    t.boolean  "Other_style"
    t.string   "Other_style_detail"
  end

  create_table "scaffords", :force => true do |t|
    t.string   "meetup"
    t.string   "location"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "date"
    t.text     "discription"
    t.integer  "cost"
    t.text     "title"
    t.integer  "organaizer_id"
    t.string   "organaizer_name"
    t.string   "distination"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "a"
    t.string   "b"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "username"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
