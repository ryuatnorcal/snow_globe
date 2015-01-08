class AddUsernameToMeetupRsvp < ActiveRecord::Migration
  def change
    add_column :meetup_rsvps, :username, :string
  end
end
