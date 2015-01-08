class CreateMeetupRsvps < ActiveRecord::Migration
  def change
    create_table :meetup_rsvps do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :rsvp
      t.boolean :attend
      t.text :comment

      t.timestamps
    end
  end
end
