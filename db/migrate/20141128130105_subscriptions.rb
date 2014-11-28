class Subscriptions < ActiveRecord::Migration
  def change
   create_table :subscriptions do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
