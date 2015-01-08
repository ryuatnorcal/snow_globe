class AddGroupidToMeetups < ActiveRecord::Migration
  def change
    add_column :meetups, :group_id, :integer
    add_column :meetups, :group_name, :string
  end
end
