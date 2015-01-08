class CreateComments < ActiveRecord::Migration
  def change
  	drop_table :comments
    create_table :comments do |t|
      t.string :username
      t.text :comment
      t.timestamp :date
      t.integer :id
      t.integer :postID
			t.integer :user_id
      t.timestamps
    end
  end
end
