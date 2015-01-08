class CreateScaffords < ActiveRecord::Migration
  def change
    create_table :scaffords do |t|
      t.string :meetup
      t.string :location
      t.string :city
      t.string :state
      t.string :country
      t.datetime :date
      t.text :discription
      t.integer :cost
      t.text :title
      t.integer :organaizer_id
      t.string :organaizer_name
      t.string :distination

      t.timestamps
    end
  end
end
