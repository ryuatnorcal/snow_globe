class CreateMeetupComments < ActiveRecord::Migration
  def change
    create_table :meetup_comments do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :username
      t.text :comment

      t.timestamps
    end
  end
end
