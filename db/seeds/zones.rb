ru = Spree::Zone.find_by_name("Russia")
uk = Spree::Zone.find_by_name("UK")

unless (ru || uk)
	Spree::Zone.create!([
		{
			:name => "Russia", 
			:description => "Russian Federation" 
		},
		{
			:name => "UK", 
			:description => "United Kingdom" 
		}
	])
	puts "SAMPLE DATA -> Created zones"
else
	puts "Already in base"
end