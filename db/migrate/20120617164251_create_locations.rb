class CreateLocations < ActiveRecord::Migration
  def change
  	drop_table :locations 
    create_table :locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
