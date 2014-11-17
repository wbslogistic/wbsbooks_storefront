class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :othstreet, :string
    add_column :spree_users, :othsuburb, :string
    add_column :spree_users, :othpostalcode , :integer
    add_column :spree_users, :othcity, :string
    add_column :spree_users, :othcountry,:integer
    add_column :spree_users, :othstate,:integer
    add_column :spree_users, :fax, :integer
    add_column :spree_users, :accounttype, :integer
    add_column :spree_users, :actcompanyname, :string
    add_column :spree_users, :registerednumber, :integer
    add_column :spree_users, :countryregistration, :integer
    add_column :spree_users, :vat, :integer
    add_column :spree_users, :years, :integer
    add_column :spree_users, :newsletter, :integer
  end
end
