class CreateGroupMemberships < ActiveRecord::Migration
  def change
    drop_table :group_memberships
    create_table :group_memberships do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
