class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :a
      t.string :b

      t.timestamps
    end
  end
end
