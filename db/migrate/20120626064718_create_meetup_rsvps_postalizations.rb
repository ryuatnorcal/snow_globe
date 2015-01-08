class CreateMeetupRsvpsPostalizations < ActiveRecord::Migration
  def change
    create_table :meetup_rsvps_postalizations do |t|
      t.integer :event_id
      t.integer :rsvp_id

      t.timestamps
    end
  end
end
