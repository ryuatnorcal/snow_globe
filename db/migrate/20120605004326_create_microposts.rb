class CreateMicroposts < ActiveRecord::Migration
  def change
  	#drop_table :microposts
    create_table :microposts do |t|
      t.integer :user_id
      t.text :posts

      t.timestamps :times
    end
#    add_index :microposts, [:user_id, :truckable]
  end
end
