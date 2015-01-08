class AddStyleToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :style, :string
  end
end
