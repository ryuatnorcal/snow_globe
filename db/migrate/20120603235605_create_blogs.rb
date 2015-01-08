class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :article
      t.date :time
      t.primary_key :id

      t.timestamps
    end
  end
end
