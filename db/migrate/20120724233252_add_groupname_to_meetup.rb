class AddGroupnameToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :groupname, :string
  end
end
