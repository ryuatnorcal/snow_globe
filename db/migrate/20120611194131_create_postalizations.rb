class CreatePostalizations < ActiveRecord::Migration
  def change
  	#drop_table :postalizations
    create_table :postalizations do |t|
      t.integer :micropost_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
