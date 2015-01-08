class AddTimesToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :open_times_mon, :time
    add_column :places, :open_times_tue, :time
    add_column :places, :open_times_wed, :time
    add_column :places, :open_times_thu, :time
    add_column :places, :open_times_fri, :time
    add_column :places, :open_times_sat, :time
    add_column :places, :open_times_sun, :time
    add_column :places, :close_time_mon, :time
    add_column :places, :close_time_tue, :time
    add_column :places, :close_time_wed, :time
    add_column :places, :close_time_thu, :time
    add_column :places, :close_time_fri, :time
    add_column :places, :close_time_sat, :time
    add_column :places, :close_time_sun, :time
  end
end
