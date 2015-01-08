class AddCategoriesOfStyleToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :Snowboarder, :boolean
    add_column :profiles, :Skier, :boolean
    add_column :profiles, :Snowskater, :boolean
    add_column :profiles, :Other_style, :boolean
    add_column :profiles, :Other_style_detail, :string
  end
end
