class AddImageToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :image, :string
  end
end
