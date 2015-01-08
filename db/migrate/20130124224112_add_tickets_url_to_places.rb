class AddTicketsUrlToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :ticket_url, :string
  end
end
