class RemoveCityFromMeetup < ActiveRecord::Migration
  def up
    remove_column :meetups, :city
  end

  def down
    add_column :meetups, :city, :string
  end
end
