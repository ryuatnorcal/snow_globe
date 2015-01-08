class AddUpdateToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :home_trail, :string
    add_column :profiles, :zip, :string
    add_column :profiles, :type, :string
    add_column :profiles, :guear_board, :string
    add_column :profiles, :guear_binder, :string
    add_column :profiles, :guear_boots, :string
    add_column :profiles, :guear_pants, :string
    add_column :profiles, :guear_jackets, :string
    add_column :profiles, :guear_headwear, :string
    add_column :profiles, :youtube, :string
    add_column :profiles, :vimeo, :string
    add_column :profiles, :meet_up_attended, :boolean
    add_column :profiles, :meet_up_planning, :boolean
    add_column :profiles, :meet_up_absented, :boolean
    add_column :profiles, :meet_up_canceled, :boolean
    add_column :profiles, :meet_up_status, :string
  end
end
