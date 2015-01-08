class AddGeographicinfoToMeetupProfile < ActiveRecord::Migration
  def change
    add_column :meetup_profiles, :address, :string
    add_column :meetup_profiles, :latitude, :float
    add_column :meetup_profiles, :longitude, :float
  end
end
