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
      :attachment => image("009")
    }
  ],
  products[:paris_finds].master => [
    {
      :attachment => image("010")
    }
  ],
  products[:star_dance].master => [
    {
      :attachment => image("011")
    }
  ],
  products[:victor_suvorov].master => [
    {
      :attachment => image("012")
    }
  ],
  products[:complete_encyclopedia].master => [
    {
      :attachment => image("013")
    }
  ],
  products[:words].master => [
    {
      :attachment => image("014")
    }
  ],
  products[:abc].master => [
    {
      :attachment => image("014")
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