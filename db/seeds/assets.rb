products = {}

products[:all_about_nothing] = Spree::Product.find_by_name!("All about nothing. How to get the most by investing at least")
products[:military_methods] = Spree::Product.find_by_name!("Military methods in business. Tactics")
products[:judo_strategy] = Spree::Product.find_by_name!("Judo strategy. How to force competitors to their advantage")
products[:th_century] = Spree::Product.find_by_name!("20th Century Art/art of the 20th century")
products[:baroque] = Spree::Product.find_by_name!("Baroque")
products[:ocean_patrol] = Spree::Product.find_by_name!("An ocean patrol. In 2 volumes. Volume 2. Wind from the ocean")
products[:war_and_peace] = Spree::Product.find_by_name!("War and peace. Book 2. Volume 3-4")
products[:peter_the_great] = Spree::Product.find_by_name!("The Wife of Peter The Great. Our First Empress")
products[:learn_to_draw] = Spree::Product.find_by_name!("Learn to draw fantasy characters")
products[:paris_finds] = Spree::Product.find_by_name!("Paris finds. The Era Of Pushkin")
products[:star_dance] = Spree::Product.find_by_name!("Star dance with Oksana Sidorenko and Alexander Nevsky")
products[:victor_suvorov] = Spree::Product.find_by_name!("Viktor Suvorov without censorship. The cave against Stalinism")
products[:complete_encyclopedia] = Spree::Product.find_by_name!("Complete encyclopedia of medicinal plants")
products[:words] = Spree::Product.find_by_name!("Words. Developing book with stickers")
products[:abc] = Spree::Product.find_by_name!("My ABC Sticker Activity Book")
#bestsellers
products[:the_fault] = Spree::Product.find_by_name!("The Fault in Our Stars")
products[:abode] = Spree::Product.find_by_name!("Abode")
products[:the_one] = Spree::Product.find_by_name!("The One Plus One")
products[:have_a_mercy] = Spree::Product.find_by_name!("Have a mercy on bastards")
products[:russian_canary] = Spree::Product.find_by_name!("The Russian Canary. Zheltukhin")
products[:husbands] = Spree::Product.find_by_name!("The Husband's Secret")
products[:billi] = Spree::Product.find_by_name!("Billi")
products[:the_most] = Spree::Product.find_by_name!("The most mysterious secret and other stories")
products[:bellman] = Spree::Product.find_by_name!("Bellman & Black")
#new
products[:the_sequel] = Spree::Product.find_by_name!("The sequel to 'Angels do not Survive on Ice'")
products[:light_worlds] = Spree::Product.find_by_name!("Light Worlds")
products[:the_green_gambit] = Spree::Product.find_by_name!("The Green Gambit")
products[:death] = Spree::Product.find_by_name!("Death of the gods 2. Book 3 Ashes of Asgard")
products[:the_stranger] = Spree::Product.find_by_name!("The Stranger (The Labyrinths of Echo, Book 1)")
products[:the_wanderer] = Spree::Product.find_by_name!("The Wanderer and his country")
products[:adultery] = Spree::Product.find_by_name!("Adultery: A novel")
products[:bridget] = Spree::Product.find_by_name!("Bridget Jones. Mad About the Boy")
products[:grand] = Spree::Product.find_by_name!("Grand")
products[:dark_places] = Spree::Product.find_by_name!("Dark Places")
#comming soon
products[:russian_brutal] = Spree::Product.find_by_name!("Russian Brutal Short Story")
products[:the_phantom] = Spree::Product.find_by_name!("The Phantom of the Heavenly Jerusalem")
products[:mr] = Spree::Product.find_by_name!("Mr. Mercedes")
products[:and_life] = Spree::Product.find_by_name!("And life was very good")
products[:dance] = Spree::Product.find_by_name!("Dance of the Happy Shades")


def image(name, type="jpg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:all_about_nothing].master => [
    {
      :attachment => image("001")
    }
  ],
  products[:military_methods].master => [
    {
      :attachment => image("002")
    }
  ],
  products[:judo_strategy].master => [
    {
      :attachment => image("003")
    }
  ],
  products[:th_century].master => [
    {
      :attachment => image("004")
    }
  ],
  products[:baroque].master => [
    {
      :attachment => image("005")
    }
  ],
  products[:ocean_patrol].master => [
    {
      :attachment => image("006")
    }
  ],
  products[:war_and_peace].master => [
    {
      :attachment => image("007")
    }
  ],
  products[:peter_the_great].master => [
    {
      :attachment => image("008")
    }
  ],
  products[:learn_to_draw].master => [
    {
      :attachment => image("008")
    }
  ],
  products[:paris_finds].master => [
    {
      :attachment => image("009")
    }
  ],
  products[:star_dance].master => [
    {
      :attachment => image("010")
    }
  ],
  products[:victor_suvorov].master => [
    {
      :attachment => image("011")
    }
  ],
  products[:complete_encyclopedia].master => [
    {
      :attachment => image("012")
    }
  ],
  products[:words].master => [
    {
      :attachment => image("013")
    }
  ],
  products[:abc].master => [
    {
      :attachment => image("014")
    }
  ],
  #bestsellers
products[:the_fault].master => [
    {
      :attachment => image("best001")
    }
  ],
products[:abode].master => [
    {
      :attachment => image("best002")
    }
  ],
products[:the_one].master => [
    {
      :attachment => image("best003")
    }
  ],
products[:have_a_mercy].master => [
    {
      :attachment => image("best004")
    }
  ],
products[:russian_canary].master => [
    {
      :attachment => image("best005")
    }
  ],
products[:husbands].master => [
    {
      :attachment => image("best006")
    }
  ],
products[:billi].master => [
    {
      :attachment => image("best007")
    }
  ],
products[:the_most].master => [
    {
      :attachment => image("best008")
    }
  ],
products[:bellman].master => [
    {
      :attachment => image("best009")
    }
  ],
#new
products[:the_sequel].master => [
    {
      :attachment => image("new001")
    }
  ],
products[:light_worlds].master => [
    {
      :attachment => image("new002")
    }
  ],
products[:the_green_gambit].master => [
    {
      :attachment => image("new003")
    }
  ],
products[:death].master => [
    {
      :attachment => image("new004")
    }
  ],
products[:the_stranger].master => [
    {
      :attachment => image("new005")
    }
  ],
products[:the_wanderer].master => [
    {
      :attachment => image("new006")
    }
  ],
products[:adultery].master => [
    {
      :attachment => image("new007")
    }
  ],
products[:bridget].master => [
    {
      :attachment => image("new008")
    }
  ],
products[:grand].master => [
    {
      :attachment => image("new009")
    }
  ],
products[:dark_places].master => [
    {
      :attachment => image("new010")
    }
  ],
#comming soon
products[:russian_brutal].master => [
    {
      :attachment => image("com001")
    }
  ],
products[:the_phantom].master => [
    {
      :attachment => image("com002")
    }
  ],
products[:mr].master => [
    {
      :attachment => image("com003")
    }
  ],
products[:and_life].master => [
    {
      :attachment => image("com004")
    }
  ],
products[:dance].master => [
    {
      :attachment => image("com005")
    }
  ]
}

images.each do |variant, attachments|
  puts "Loading images for #{variant.name}"
  attachments.each do |attachment|
    variant.images.create!(attachment)
  end
end

puts 'SAMPLE DATA -> Assets created'