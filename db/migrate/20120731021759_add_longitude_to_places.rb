class AddLongitudeToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :longitude, :float
  end
end
