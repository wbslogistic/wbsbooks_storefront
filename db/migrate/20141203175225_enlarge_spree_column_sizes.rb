class EnlargeSpreeColumnSizes < ActiveRecord::Migration
  def change
    change_column :spree_products, :name, :string ,:limit => 1000
    change_column :spree_products, :description, :text ,:limit => 2500

    change_column :spree_taxon_translations, :description, :text ,:limit => 2000
    change_column :spree_taxon_translations, :permalink, :text ,:limit => 2500

    change_column :spree_taxonomies, :name, :string ,:limit => 1000

    change_column :spree_taxons, :name, :string ,:limit => 1000
    change_column :spree_taxons, :permalink, :text ,:limit => 2000


  end
end
