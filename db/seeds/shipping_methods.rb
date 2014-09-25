europe_vat = Spree::Zone.find_by_name!("EU_VAT")
shipping_category = Spree::ShippingCategory.find_or_create_by!(name: 'Default')

Spree::ShippingMethod.create!([
  {
    :name => "Via UK (Arrival Wickford) (3 kgs)",
    :zones => [europe_vat],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "Courier Rate (3 kgs to RU)",
    :zones => [europe_vat],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "Direct Rate (3 kgs) Road/Sea",
    :zones => [europe_vat],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "Direct Rate (3 kgs) Air",
    :zones => [europe_vat],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  }
])

{
  "Via UK (Arrival Wickford) (3 kgs)" => [13, "USD"],
  "Courier Rate (3 kgs to RU)" => [5, "USD"],
  "Direct Rate (3 kgs) Road/Sea" => [3, "USD"],
  "Direct Rate (3 kgs) Air" => [3, "USD"]
}.each do |shipping_method_name, (price, currency)|
  shipping_method = Spree::ShippingMethod.find_by_name!(shipping_method_name)
  shipping_method.calculator.preferred_amount = price
  shipping_method.calculator.preferred_currency = currency
  shipping_method.save!
end

puts 'SAMPLE DATA -> New shipping_methods created'