class CreateMeetups < ActiveRecord::Migration
  def change

    create_table :meetups do |t|
      t.string :location

      t.string :state
      t.string :country
      t.datetime :date
      t.text :discription
      t.integer :cost
      t.string :title
      t.integer :organaizer_id
      t.string :organaizer_name
      t.string :distination
     # using following values as geocoder
			t.string :address 
			t.float :latitude
			t.float :longitude
      t.timestamps
      # probabry you need to add following line 
      #t.string :groupname 
    end
  end
end
