class AddUsernameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :userName, :string
  end
end
