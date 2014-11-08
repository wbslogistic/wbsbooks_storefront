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
#bestsellers
the_fault = Spree::Product.find_by_name!("The Fault in Our Stars")
abode = Spree::Product.find_by_name!("Abode")
the_one = Spree::Product.find_by_name!("The One Plus One")
have_a_mercy = Spree::Product.find_by_name!("Have a mercy on bastards")
russian_canary = Spree::Product.find_by_name!("The Russian Canary. Zheltukhin")
husbands = Spree::Product.find_by_name!("The Husband's Secret")
billi = Spree::Product.find_by_name!("Billi")
the_most = Spree::Product.find_by_name!("The most mysterious secret and other stories")
bellman = Spree::Product.find_by_name!("Bellman & Black")
#new
the_sequel = Spree::Product.find_by_name!("The sequel to 'Angels do not Survive on Ice'")
light_worlds = Spree::Product.find_by_name!("Light Worlds")
the_green_gambit = Spree::Product.find_by_name!("The Green Gambit")
death = Spree::Product.find_by_name!("Death of the gods 2. Book 3 Ashes of Asgard")
the_stranger = Spree::Product.find_by_name!("The Stranger (The Labyrinths of Echo, Book 1)")
the_wanderer = Spree::Product.find_by_name!("The Wanderer and his country")
adultery = Spree::Product.find_by_name!("Adultery: A novel")
bridget = Spree::Product.find_by_name!("Bridget Jones. Mad About the Boy")
grand = Spree::Product.find_by_name!("Grand")
dark_places = Spree::Product.find_by_name!("Dark Places")
#comming soon
russian_brutal = Spree::Product.find_by_name!("Russian Brutal Short Story")
the_phantom = Spree::Product.find_by_name!("The Phantom of the Heavenly Jerusalem")
mr = Spree::Product.find_by_name!("Mr. Mercedes")
and_life = Spree::Product.find_by_name!("And life was very good")
dance = Spree::Product.find_by_name!("Dance of the Happy Shades")

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
#bestsellers
  {
    :product => the_fault,
    :sku => "978-5-17-086712-7",
    :cost_price => 5.20
  },
  {
    :product => abode,
    :sku => "978-5-17-084483-8",
    :cost_price => 6.25
  },
  {
    :product => the_one,
    :sku => "978-5-389-07450-7",
    :cost_price => 4.67
  },
  {
    :product => have_a_mercy,
    :sku => "978-5-389-07876-5",
    :cost_price => 4.82
  },
  {
    :product => russian_canary,
    :sku => "978-5-699-70684-6",
    :cost_price => 7.64
  },
  {
    :product => husbands,
    :sku => "978-5-389-07271-8",
    :cost_price => 4.43
  },
  {
    :product => billi,
    :sku => "978-5-17-084109-7",
    :cost_price => 5.20
  },
  {
    :product => the_most,
    :sku => "978-5-17-083992-6",
    :cost_price => 9.65
  },
  {
    :product => bellman,
    :sku => "978-5-389-07620-4",
    :cost_price => 7.11
  },
#new
  {
    :product => the_sequel,
    :sku => "978-5-699-73874-8",
    :cost_price => 10.95
  },
  {
    :product => light_worlds,
    :sku => "978-5-17-085088-4",
    :cost_price => 7.43
  },
  {
    :product => the_green_gambit,
    :sku => "978-5-699-75059-7",
    :cost_price => 5.04
  },
  {
    :product => death,
    :sku => "978-5-699-75124-2",
    :cost_price => 5.04
  },
  {
    :product => the_stranger,
    :sku => "978-5-17-087268-8",
    :cost_price => 5.20
  },
  {
    :product => the_wanderer,
    :sku => "978-5-17-086174-3",
    :cost_price => 6.22
  },
  {
    :product => adultery,
    :sku => "978-5-17-085702-9",
    :cost_price => 6.68
  },
  {
    :product => bridget,
    :sku => "978-5-699-71420-9",
    :cost_price => 5.22
  },
  {
    :product => grand,
    :sku => "978-5-15-084150-9",
    :cost_price => 5.89
  },
  {
    :product => dark_places,
    :sku => "978-5-389-05013-6",
    :cost_price => 6.58
  },
#comming soon
  {
    :product => russian_brutal,
    :sku => "978-5-17-085231-4",
    :cost_price => 8.16
  },
  {
    :product => the_phantom,
    :sku => "978-5-699-67871-6",
    :cost_price => 2.76
  },
  {
    :product => mr,
    :sku => "978-5-17-085312-0",
    :cost_price => 5.22
  },
  {
    :product => and_life,
    :sku => "978-5-699-75030-6",
    :cost_price => 4.15
  },
  {
    :product => dance,
    :sku => "978-5-389-07986-1",
    :cost_price => 5.64
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
#bestsellers
  the_fault => {
    :sku => "978-5-17-086712-7",
    :cost_price => 5.20
  },
  abode => {
    :sku => "978-5-17-084483-8",
    :cost_price => 6.25
  },
  the_one => {
    :sku => "978-5-389-07450-7",
    :cost_price => 4.67
  },
  have_a_mercy => {
    :sku => "978-5-389-07876-5",
    :cost_price => 4.82
  },
 russian_canary => {
    :sku => "978-5-699-70684-6",
    :cost_price => 7.64
  },
  husbands => {
    :sku => "978-5-389-07271-8",
    :cost_price => 4.43
  },
  billi => {
    :sku => "978-5-17-084109-7",
    :cost_price => 5.20
  },
  the_most => {
    :sku => "978-5-17-083992-6",
    :cost_price => 9.65
  },
  bellman => {
    :sku => "978-5-389-07620-4",
    :cost_price => 7.11
  },
#new
  the_sequel => {
    :sku => "978-5-699-73874-8",
    :cost_price => 10.95
  },
  light_worlds => {
    :sku => "978-5-17-085088-4",
    :cost_price => 7.43
  },
  the_green_gambit => {
    :sku => "978-5-699-75059-7",
    :cost_price => 5.04
  },
  death => {
    :sku => "978-5-699-75124-2",
    :cost_price => 5.04
  },
  the_stranger => {
    :sku => "978-5-17-087268-8",
    :cost_price => 5.20
  },
  the_wanderer => {
    :sku => "978-5-17-086174-3",
    :cost_price => 6.22
  },
  adultery => {
    :sku => "978-5-17-085702-9",
    :cost_price => 6.68
  },
  bridget => {
    :sku => "978-5-699-71420-9",
    :cost_price => 5.22
  },
  grand => {
    :sku => "978-5-15-084150-9",
    :cost_price => 5.89
  },
  dark_places => {
    :sku => "978-5-389-05013-6",
    :cost_price => 6.58
  },
#comming soon
  russian_brutal => {
    :sku => "978-5-17-085231-4",
    :cost_price => 8.16
  },
  the_phantom => {
    :sku => "978-5-699-67871-6",
    :cost_price => 2.76
  },
  mr => {
    :sku => "978-5-17-085312-0",
    :cost_price => 5.22
  },
  and_life => {
    :sku => "978-5-699-75030-6",
    :cost_price => 4.15
  },
  dance => {
    :sku => "978-5-389-07986-1",
    :cost_price => 5.64
  },
}

masters.each do |product, variant_attrs|
  product.master.update_attributes!(variant_attrs)
end

puts 'SAMPLE DATA -> variants created'
