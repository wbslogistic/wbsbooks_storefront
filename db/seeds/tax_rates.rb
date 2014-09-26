europe_vat = Spree::Zone.find_by_name!("EU_VAT")
books = Spree::TaxCategory.find_by_name!("Books")
tax_rate = Spree::TaxRate.create(
  :name => "EU_VAT",
  :zone => europe_vat, 
  :amount => 0.05,
  :tax_category => books)
tax_rate.calculator = Spree::Calculator::DefaultTax.create!
tax_rate.save!

puts 'SAMPLE DATA -> New tax rates created'