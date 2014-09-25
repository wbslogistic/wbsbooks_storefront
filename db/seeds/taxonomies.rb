taxonomies = [
  { :name => "Categories" },
  { :name => "Specials" },
  { :name => "Publishers" },
  { :name => "Authors" },
  { :name => "Suggested titles" },
  { :name => "Whats new" },
]

taxonomies.each do |taxonomy_attrs|
  Spree::Taxonomy.create!(taxonomy_attrs)
end

puts "SAMPLE DATA -> Created taxonomies"