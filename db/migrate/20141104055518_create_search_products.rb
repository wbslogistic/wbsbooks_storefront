class CreateSearchProducts < ActiveRecord::Migration
  def change
    create_table :search_products do |t|
      t.references :product, index: true
      t.string :locale
      t.string :isbn
      t.string :name
      t.string :author
      t.string :publisher
      t.string :concat_name

      t.timestamps
    end
    add_index :search_products, :concat_name
  end
end