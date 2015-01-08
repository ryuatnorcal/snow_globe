class CreateMeetupPostalizations < ActiveRecord::Migration
  def change
    create_table :meetup_postalizations do |t|
      t.integer :meetup_id
      t.integer :meetup_comment_id

      t.timestamps
    end
  end
end
