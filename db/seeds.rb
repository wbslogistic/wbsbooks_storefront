# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# Load test data for WBSBOOKS
require File.expand_path('../seeds/users.rb', __FILE__)
require File.expand_path('../seeds/payment_methods.rb', __FILE__)
require File.expand_path('../seeds/shipping_categories.rb', __FILE__)
require File.expand_path('../seeds/shipping_methods.rb', __FILE__)
require File.expand_path('../seeds/zones.rb', __FILE__)
require File.expand_path('../seeds/tax_categories.rb', __FILE__)
require File.expand_path('../seeds/tax_rates.rb', __FILE__)

require File.expand_path('../seeds/properties.rb', __FILE__)
require File.expand_path('../seeds/products.rb', __FILE__)
require File.expand_path('../seeds/taxonomies.rb', __FILE__)
require File.expand_path('../seeds/taxons.rb', __FILE__)
require File.expand_path('../seeds/product_properties.rb', __FILE__)
require File.expand_path('../seeds/variants.rb', __FILE__)
require File.expand_path('../seeds/stock.rb', __FILE__)
require File.expand_path('../seeds/assets.rb', __FILE__)

require File.expand_path('../seeds/orders.rb', __FILE__)
require File.expand_path('../seeds/adjustments.rb', __FILE__)
require File.expand_path('../seeds/payments.rb', __FILE__)