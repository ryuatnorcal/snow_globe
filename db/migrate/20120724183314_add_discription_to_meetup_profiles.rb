class AddDiscriptionToMeetupProfiles < ActiveRecord::Migration
  def change
    add_column :meetup_profiles, :discription, :string
  end
end
