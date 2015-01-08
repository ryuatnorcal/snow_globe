class AddAdditionalToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :username, :string
    add_column :pictures, :user_id, :integer
  end
end
