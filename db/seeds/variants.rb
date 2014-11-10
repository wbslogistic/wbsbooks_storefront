all_about_nothing = Spree::Product.find_by_name!("All about nothing. How to get the most by investing at least")
military_methods = Spree::Product.find_by_name!("Military methods in business. Tactics")
judo_strategy = Spree::Product.find_by_name!("Judo strategy. How to force competitors to their advantage")
th_century = Spree::Product.find_by_name!("20th Century Art/art of the 20th century")
baroque = Spree::Product.find_by_name!("Baroque")
ocean_patrol = Spree::Product.find_by_name!("An ocean patrol. In 2 volumes. Volume 2. Wind from the ocean")
war_and_peace = Spree::Product.find_by_name!("War and peace. Book 2. Volume 3-4")
peter_the_great = Spree::Product.find_by_name!("The Wife of Peter The Great. Our First Empress")
learn_to_draw = Spree::Product.find_by_name!("Learn to draw fantasy characters")
paris_finds = Spree::Product.find_by_name!("Paris finds. The Era Of Pushkin")
star_dance = Spree::Product.find_by_name!("Star dance with Oksana Sidorenko and Alexander Nevsky")
victor_suvorov = Spree::Product.find_by_name!("Viktor Suvorov without censorship. The cave against Stalinism")
complete_encyclopedia = Spree::Product.find_by_name!("Complete encyclopedia of medicinal plants")
words = Spree::Product.find_by_name!("Words. Developing book with stickers")
abc = Spree::Product.find_by_name!("My ABC Sticker Activity Book")

variants = [
  {
    :product => all_about_nothing,
    :sku => "978-5-699-27652-3",
    :cost_price => 17,
  },
  {
    :product => military_methods,
    :sku => "978-5-271-40419-1",
    :cost_price => 17
  },
  {
    :product => judo_strategy,
    :sku => "5-93878-271-6",
    :cost_price => 21
  },
  {
    :product => th_century,
    :sku => "5-17-021297-6",
    :cost_price => 17
  },
  {
    :product => baroque,
    :sku => "978-5-699-27652-6",
    :cost_price => 11
  },
  {
    :product => ocean_patrol,
    :sku => "978-5-17-065183-2",
    :cost_price => 17
  },
  {
    :product => war_and_peace,
    :sku => "978-5-17-065204-4",
    :cost_price => 15
  },
  {
    :product => peter_the_great,
    :sku => "978-5-699-27652-2",
    :cost_price => 17
  },
  {
    :product => learn_to_draw,
    :sku => "978-5-699-32074-5",
    :cost_price => 17
  },
  {
    :product => paris_finds,
    :sku => "978-5-17-031339-6",
    :cost_price => 17
  },
  {
    :product => star_dance,
    :sku => "978-5-17-067896-9",
    :cost_price => 15
  },
  {
    :product => victor_suvorov,
    :sku => "978-5-995-50336-1",
    :cost_price => 17
  },
  {
    :product => complete_encyclopedia,
    :sku => "978-5-699-57811-5",
    :cost_price => 11
  },
  {
    :product => words,
    :sku => "978-5-9539-7338-0",
    :cost_price => 17
  },
  {
    :product => abc,
    :sku => "978-5-9539-7335-9",
    :cost_price => 13
  },
]


masters = {
  all_about_nothing => {
    :sku => "978-5-699-27652-3",
    :cost_price => 17,
  },
  military_methods => {
    :sku => "978-5-271-40419-1",
    :cost_price => 17
  },
  judo_strategy => {
    :sku => "5-93878-271-6",
    :cost_price => 21
  },
  th_century => {
    :sku => "5-17-021297-6",
    :cost_price => 17
  },
  baroque => {
    :sku => "978-5-699-27652-6",
    :cost_price => 11
  },
  ocean_patrol => {
    :sku => "978-5-17-065183-2",
    :cost_price => 17
  },
  war_and_peace => {
    :sku => "978-5-17-065204-4",
    :cost_price => 15
  },
  peter_the_great => {
    :sku => "978-5-699-27652-2",
    :cost_price => 17
  },
  learn_to_draw => {
    :sku => "978-5-699-32074-5",
    :cost_price => 17
  },
  paris_finds => {
    :sku => "978-5-17-031339-6",
    :cost_price => 17
  },
  star_dance => {
    :sku => "978-5-17-067896-9",
    :cost_price => 15
  },
  victor_suvorov => {
    :sku => "978-5-995-50336-1",
    :cost_price => 17
  },
  complete_encyclopedia => {
    :sku => "978-5-699-57811-5",
    :cost_price => 11
  },
  words => {
    :sku => "978-5-9539-7338-0",
    :cost_price => 17
  },
  abc => {
    :sku => "978-5-9539-7335-9",
    :cost_price => 13
  },
}

masters.each do |product, variant_attrs|
  product.master.update_attributes!(variant_attrs)
end

puts 'SAMPLE DATA -> variants created'
