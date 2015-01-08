class AddSpreeAdminNewsModel < ActiveRecord::Migration
  def change

    create_table :spree_news do |t|
      t.string     :name
      t.text       :location
    end
  end

end
