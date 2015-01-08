class AddOrganizersToMeetupProfiles < ActiveRecord::Migration
  def change
    add_column :meetup_profiles, :organaizer_username, :string
    add_column :meetup_profiles, :organaizer_id, :integer
    add_column :meetup_profiles, :coorganaizer_username, :string
    add_column :meetup_profiles, :coorganaizer_id, :integer
  end
end
