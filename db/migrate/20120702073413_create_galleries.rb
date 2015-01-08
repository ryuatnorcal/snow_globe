class CreateGalleries < ActiveRecord::Migration
  def change
  	drop_table :galleries
    create_table :galleries do |t|

      t.timestamps
    end
  end
end
