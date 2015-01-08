class AddContactsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :phone, :string
    add_column :places, :email, :string
  end
end
