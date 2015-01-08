class CreateMeetupProfiles < ActiveRecord::Migration
  def change
  	drop_table :meetup_profiles
    create_table :meetup_profiles do |t|
      t.string :groupname
      t.integer :group_id
      t.string :image
      t.integer :trip_id
      t.integer :members
      t.string :member_names
	  t.integer :organaizer_id
	  t.string :organaizer_username
	  t.integer :coorganaizer_id
	  t.string :coorganaizer_username
	  #t.string :discription added 	
      t.timestamps
    end
  end
end
