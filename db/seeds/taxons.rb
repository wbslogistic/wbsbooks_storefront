#encoding: utf-8
categories = Spree::Taxonomy.find_by_name!("Categories")
specials = Spree::Taxonomy.find_by_name!("Specials")
publishers = Spree::Taxonomy.find_by_name!("Publishers")
authors = Spree::Taxonomy.find_by_name!("Authors")
suggested = Spree::Taxonomy.find_by_name!("Suggested titles")
whats_new = Spree::Taxonomy.find_by_name!("Whats new")

products = { 
  :all_about_nothing => "All about nothing. How to get the most by investing at least",
  :military_methods => "Military methods in business. Tactics",
  :judo_strategy => "Judo strategy. How to force competitors to their advantage",
  :th_century => "20th Century Art/art of the 20th century",
  :baroque => "Baroque",
  :ocean_patrol => "An ocean patrol. In 2 volumes. Volume 2. Wind from the ocean",
  :war_and_peace => "War and peace. Book 2. Volume 3-4",
  :peter_the_great => "The Wife of Peter The Great. Our First Empress",
  :learn_to_draw => "Learn to draw fantasy characters",
  :paris_finds => "Paris finds. The Era Of Pushkin",
  :star_dance => "Star dance with Oksana Sidorenko and Alexander Nevsky",
  :victor_suvorov => "Viktor Suvorov without censorship. The cave against Stalinism",
  :complete_encyclopedia => "Complete encyclopedia of medicinal plants",
  :words => "Words. Developing book with stickers",
  :abc => "My ABC Sticker Activity Book"
}


products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    :name => "Categories",
    :taxonomy => categories,
    :position => 0
  },
   {
    :name => "Books in foreign languages",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Books in English",
    :taxonomy => categories,
    :parent => "Books in foreign languages",
    :position => 0,
    :products => [
      products[:th_century],
      products[:baroque]
    ]
  },
  {
    :name => "Business books",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:all_about_nothing],
      products[:military_methods],
      products[:judo_strategy]
    ]
  },
  {
    :name => "Children and parents",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Fiction",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great]
    ]
  },
  {
    :name => "Limited Edition",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:learn_to_draw],
      products[:paris_finds]
    ]
  },
  {
    :name => "Non fiction",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:star_dance],
      products[:victor_suvorov],
      products[:complete_encyclopedia]
    ]
  },
  {
    :name => "Reference Books",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:words],
      products[:abc]
    ]
  },
  {
    :name => "Training and education",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Specials",
    :taxonomy => specials,
    :parent => "Specials",
    :products => [
      products[:th_century],
      products[:baroque],
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great],
      products[:star_dance],
      products[:victor_suvorov],
      products[:complete_encyclopedia]
    ]
  },
  {
    :name => "Publishers",
    :taxonomy => publishers,
    :position => 0
  },
  {
    :name => "Egmont Russia",
    :taxonomy => publishers,
    :description => "<p>Egmont Russia Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :parent => "Publishers",
    :position => 1,
    :products => [
      products[:words],
      products[:abc],
      products[:star_dance],
      products[:victor_suvorov],
      products[:complete_encyclopedia],
      products[:learn_to_draw],
      products[:paris_finds]
    ]
  },
  {
    :name => "Kharvest",
    :taxonomy => publishers,
    :description => "<p>Kharvest Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :parent => "Publishers",
    :position => 2,
    :products => [
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great],
      products[:all_about_nothing],
      products[:military_methods],
      products[:judo_strategy],
      products[:th_century],
      products[:baroque]
    ]
  },
  {
    :name => "AST",
    :taxonomy => publishers,
    :description => "<p>AST Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great],
      products[:all_about_nothing],
    ]
  },
  {
    :name => "Authors",
    :taxonomy => authors,
    :position => 0
  },
  {
    :name => "E. Yanushko",
    :taxonomy => authors,
    :description => "<p>This name uses Eastern Slavic naming customs;</p> the patronymic is Nikolayevich and the family name is Tolstoy. Count Lev Nikolayevich Tolstoy (Russian: Лев Никола́евич Толсто́й, pronounced [lʲef nʲɪkɐˈlaɪvʲɪt͡ɕ tɐlˈstoj] ( listen); 9 September [O.S. 28 August] 1828 – 20 November [O.S. 7 November] 1910), also known as Leo Tolstoy, was a Russian writer, philosopher and political thinker who primarily wrote novels and short stories. Tolstoy was a master of realistic fiction and is widely considered one of the greatest novelists of all time. He is best known for two long novels, War and Peace (1869) and Anna Karenina (1877). Tolstoy first achieved literary acclaim in his 20s with his semi-autobiographical trilogy of novels, Childhood, Boyhood, and Youth (1852–1856) and Sevastopol Sketches (1855), based on his experiences in the Crimean War. His fiction output also includes two additional novels, dozens of short stories, and several famous novellas, including The Death of Ivan Ilyich, Family Happiness, and Hadji Murad. Later in life, he also wrote plays and essays.",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great],
      products[:all_about_nothing],
      products[:military_methods],
      products[:judo_strategy],
      products[:th_century],
      products[:baroque]
    ]
  },
  {
    :name => "Suggested titles",
    :taxonomy => suggested,
    :parent => "Suggested titles",
    :products => [
      products[:th_century],
      products[:baroque],
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great]
    ]
  },
  {
    :name => "Whats new",
    :taxonomy => whats_new,
    :parent => "Whats new",
    :products => [
      products[:all_about_nothing],
      products[:military_methods],
      products[:judo_strategy],
      products[:star_dance],
      products[:victor_suvorov],
      products[:complete_encyclopedia]
    ]
  }
]


taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs)
  end
end

puts "SAMPLE DATA -> Created taxons"
     
