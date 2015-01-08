class AddUpdateToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :address, :string
    add_column :meetups, :latitude, :float
    add_column :meetups, :longitude, :float
  end
end
