class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :reciver_id
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
