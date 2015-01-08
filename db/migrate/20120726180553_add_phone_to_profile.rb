class AddPhoneToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :phone, :string
  end
end
