class AddGroupinfoToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :group_organaizer, :boolean
    add_column :profiles, :group_coorganaizer, :boolean
    add_column :profiles, :belongs_group_at, :integer
  end
end
