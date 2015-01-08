class RemoveLongtitudeFromPlaces < ActiveRecord::Migration
  def up
    remove_column :places, :longtitude
  end

  def down
    add_column :places, :longtitude, :string
  end
end
