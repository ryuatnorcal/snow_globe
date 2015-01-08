class AddTimeToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :post_time, :datetime
  end
end
