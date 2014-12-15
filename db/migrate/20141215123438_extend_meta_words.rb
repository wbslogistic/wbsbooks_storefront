class ExtendMetaWords < ActiveRecord::Migration
  def change
    change_column :spree_products, :meta_keywords, :string ,:limit => 1000
    change_column :spree_products, :meta_description, :text
    change_column :spree_products, :slug, :string ,:limit => 1000


    change_column :spree_product_translations, :name, :string ,:limit => 1000
    change_column :spree_product_translations, :description, :text

    change_column :spree_product_translations, :meta_keywords, :string ,:limit => 1000
    change_column :spree_product_translations, :meta_description, :text


  end
end
