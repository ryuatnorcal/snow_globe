class RemoveTypeFromProfile < ActiveRecord::Migration
  def up
    remove_column :profiles, :type
  end

  def down
    add_column :profiles, :type, :string
  end
end
