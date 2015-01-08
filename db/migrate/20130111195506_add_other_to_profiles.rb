class AddOtherToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :other, :boolean
    add_column :profiles, :other_detail, :string
  end
end
