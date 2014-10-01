class AddNewsletterFlagToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :newsletter, :boolean
  end
end
