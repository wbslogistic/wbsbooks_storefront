products =
  { 
    "All about nothing. How to get the most by investing at least" =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Military methods in business. Tactics"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Judo strategy. How to force competitors to their advantage"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "20th Century Art/art of the 20th century"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Baroque"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "An ocean patrol. In 2 volumes. Volume 2. Wind from the ocean"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "War and peace. Book 2. Volume 3-4"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "The Wife of Peter The Great. Our First Empress"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Learn to draw fantasy characters"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Paris finds. The Era Of Pushkin"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Star dance with Oksana Sidorenko and Alexander Nevsky"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Viktor Suvorov without censorship. The cave against Stalinism"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Complete encyclopedia of medicinal plants"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "Words. Developing book with stickers"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     },
    "My ABC Sticker Activity Book"  =>
     {
        'page_count' => rand(200),
        'publication_year'  => "#{200 + rand(9)}"
     }
  }

products.each do |name, properties|
  product = Spree::Product.find_by_name(name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end

puts "SAMPLE DATA -> Product properties created"
