class CreatePictures < ActiveRecord::Migration
# pictures handle every photo data.
#
#[FIXME] 
#				add username:string, user_id:integer date geographic information 
#
  def change
  	drop_table :pictures
    create_table :pictures do |t|
      t.string :name

      t.timestamps
    end
  end
end
