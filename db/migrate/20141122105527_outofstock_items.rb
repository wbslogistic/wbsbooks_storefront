class OutofstockItems < ActiveRecord::Migration
  def self.up
    create_table :outofstock_items do |t|
      t.string :user_email
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :outofstockitems
  end
end
