class AddTimeToComment < ActiveRecord::Migration
  def change
    add_column :comments, :post_time, :datetime
  end
end
