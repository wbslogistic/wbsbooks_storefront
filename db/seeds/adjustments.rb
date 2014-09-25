first_order = Spree::Order.find_by_number!("R123456789")
last_order = Spree::Order.find_by_number!("R987654321")

first_order.adjustments.create!(
  :amount => 0,
  :source => Spree::TaxRate.find_by_name!("EU_VAT"),
  :label => "Tax",
  :state => "open",
  :mandatory => true)

last_order.adjustments.create!(
  :amount => 0,
  :source => Spree::TaxRate.find_by_name!("EU_VAT"),
  :label => "Tax",
  :state => "open",
  :mandatory => true)

puts 'SAMPLE DATA -> Adjustments created'