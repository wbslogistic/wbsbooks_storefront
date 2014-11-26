class Notifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      
      
      t.string :name
      t.text :description
      t.text :body
     

      t.timestamps
    end
  end
end
