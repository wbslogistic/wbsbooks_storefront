class AddFieldsToNotifications < ActiveRecord::Migration
  def change
     add_column :notifications, :subscription_id, :integer
     add_column :notifications, :posted, :datetime
  end
end
