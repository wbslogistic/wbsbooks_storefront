# encoding: UTF-8
categories = Spree::Taxonomy.find_by_name!("Categories")
specials = Spree::Taxonomy.find_by_name!("Specials")
publishers = Spree::Taxonomy.find_by_name!("Publishers")
authors = Spree::Taxonomy.find_by_name!("Authors")
suggested = Spree::Taxonomy.find_by_name!("Suggested Titles")
whats_new = Spree::Taxonomy.find_by_name!("Whats new")
bestsellers = Spree::Taxonomy.find_by_name!("Bestsellers")
new_items = Spree::Taxonomy.find_by_name!("New")
comming_soon = Spree::Taxonomy.find_by_name!("Comming")

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
  :abc => "My ABC Sticker Activity Book",
#bestsellers
  :the_fault => "The Fault in Our Stars",
  :abode => "Abode",
  :the_one => "The One Plus One",
  :have_a_mercy => "Have a mercy on bastards",
  :russian_canary => "The Russian Canary. Zheltukhin",
  :husbands => "The Husband's Secret",
  :billi => "Billi",
  :the_most => "The most mysterious secret and other stories",
  :bellman => "Bellman & Black",
#new
  :the_sequel => "The sequel to 'Angels do not Survive on Ice'",
  :light_worlds => "Light Worlds",
  :the_green_gambit => "The Green Gambit",
  :death => "Death of the gods 2. Book 3 Ashes of Asgard",
  :the_stranger => "The Stranger (The Labyrinths of Echo, Book 1)",
  :the_wanderer => "The Wanderer and his country",
  :adultery => "Adultery: A novel",
  :bridget => "Bridget Jones. Mad About the Boy",
  :grand => "Grand",
  :dark_places => "Dark Places",
#comming soon
  :russian_brutal => "Russian Brutal Short Story",
  :the_phantom => "The Phantom of the Heavenly Jerusalem",
  :mr => "Mr. Mercedes",
  :and_life => "And life was very good",
  :dance => "Dance of the Happy Shades"
}


products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    :name => "Categories",
    :runame => "Категории",
    :taxonomy => categories,
    :position => 0,
    :products => [
      products[:th_century],
      products[:baroque]
    ]
  },
  #  {
  #   :name => "Books in foreign languages",
  #   :runame => "Книги на иностранных языках",
  #   :taxonomy => categories,
  #   :parent => "Categories",
  #   :position => 0
  # },
  # {
  #   :name => "Books in English",
  #   :runame => "Книги на английском языке",
  #   :taxonomy => categories,
  #   :parent => "Books in foreign languages",
  #   :position => 0,
  #   :products => [
  #     products[:th_century],
  #     products[:baroque]
  #   ]
  # },
  {
    :name => "Business books",
    :runame => "Деловая литература",
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
    :runame => "Дети и родители",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Fiction",
    :runame => "Фантастика",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great]
    ]
  },
  # {
  #   :name => "Limited Edition",
  #   :runame => "Ограниченные издания",
  #   :taxonomy => categories,
  #   :parent => "Categories",
  #   :position => 0,
  #   :products => [
  #     products[:learn_to_draw],
  #     products[:paris_finds]
  #   ]
  # },
  {
    :name => "Non fiction",
    :runame => "Научная литература",
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
    :runame => "Справочная литература",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0,
    :products => [
      products[:words],
      products[:abc]
    ]
  },
  {
    :name => "Russian Language Teaching",
    :runame => "Обучение русскому языку",
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
    :name => "Training and education",
    :runame => "Обучение и образование",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Specials",
    :runame => "Акции",
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
    :runame => "Издательства",
    :taxonomy => publishers,
    :position => 0
  },
  {
    :name => "Egmont Russia",
    :runame => "Эгмонт",
    :taxonomy => publishers,
    :description => "<p>Egmont Russia Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :rudescription => "Издательство «Эгмонт Россия» было создано в 1992 году как дочерняя фирма старейшего в Европе датского издательского концерна «Эгмонт Интернэшнл Холдинг», имеющего представительства более чем в 30 странах мира. С момента своего возникновения и по сегодняшний день «Эгмонт Россия» специализируется на выпуске книг и журналов для детей. Сегодня «Эгмонт Россия» входит в десятку крупнейших российских издательских домов. Среди издательств, выпускающих журналы для детей, «Эгмонт Россия» занимает лидирующее место — компании принадлежит около 70% рынка детской периодической печати. Являясь официальным лицензиатом The Walt Disney Company, Mattel, Warner Bros., Hasbro, Rainbow, «Эгмонт Россия» издает на русском языке популярные детские журналы: «Дисней для малышей», «Винни и его друзья», «Тачки», «Узнавайка», «Мир Принцесс», «Фея», «Играем с Барби», «Hot Wheels», «Том и Джерри», «Мой маленький пони», «Трансформеры», «Волшебницы Winx».",
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
    :runame => "Харвест",
    :taxonomy => publishers,
    :description => "<p>Kharvest Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :rudescription => "Издательский дом Харвест был основан в 1996 г. как универсальное российское издательство, в котором придерживаются нескольких основных читательских потребностей – это досуг или развлечение, получение информации и обучение. Если перевести это в терминологию жанров, то издаются остросюжетная литература (включая женские, интеллектуальные и авантюрные детективы), современная проза, детская литература, отечественная и зарубежная фантастика, деловая и обучающая литература, а также литература научно-популярная и прикладная (куда входят темы досуга, отдыха, кулинарии, здоровья, фитнеса и спорта).",
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
    :runame => "АСТ",
    :taxonomy => publishers,
    :description => "<p>AST Lorem ipsum dolor sit amet</p>, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi",
    :rudescription => "Издательство АСТ – одно из крупнейших издательств, занимающее лидирующие позиции на российском книжном рынке. Мы выпускаем книги практически всех жанров для самой широкой аудитории. Основной принцип нашей работы: предоставить читателю максимально большой выбор литературы, соответствующей его личным и профессиональным интересам. Мы постоянно знакомим наших читателей с книжными новинками, открывая новые имена и произведения. Книги, выпущенные нами, завоёвывают лучшие места на литературных конкурсах и награждаются престижными литературными премиями, такими как «Русский Букер», Большая книга», «Рукопись года», «Национальный бестселлер» и др. Мы издаем практически всю русскую и зарубежную классику, учебники и учебные пособия, великое разнообразие прикладных книг. АСТ сотрудничает с крупнейшими иностранными литературными агентствами – мы всегда в курсе мировых литературных трендов, для нас важно поделиться ими с читателем. В нашем авторском портфеле самые громкие имена: лауреаты литературных премий; самые популярные и модные авторы; медиазвезды; актеры; телеведущие и журналисты; политики и общественные деятели.",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:the_stranger],
      products[:the_wanderer],
      products[:adultery],
      products[:bridget],
      products[:grand],
      products[:billi],
      products[:the_most],
      products[:mr],
    ]
  },
  {
    :name => "Eksmo",
    :runame => "Эксмо",
    :taxonomy => publishers,
    :description => "",
    :rudescription => "",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:the_sequel],
      products[:light_worlds],
      products[:the_green_gambit],
      products[:death],
      products[:russian_canary],
      products[:the_phantom],
      products[:and_life],

    ]
  },
  {
    :name => "Azbuka",
    :runame => "Азбука",
    :taxonomy => publishers,
    :description => "",
    :rudescription => "",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:dark_places],
      products[:the_fault],
      products[:have_a_mercy],
      products[:husbands],
      products[:bellman],
      products[:dance]
    ]
  },
    {
    :name => "Corpus",
    :runame => "Корпус",
    :taxonomy => publishers,
    :description => "",
    :rudescription => "",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:russian_brutal],

    ]
  },
  {
    :name => "Elena Shubina's Publishing house",
    :runame => "Издательский дом Елены Шубиной",
    :taxonomy => publishers,
    :description => "",
    :rudescription => "",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:abode],

    ]
  },
    {
    :name => "Inostranka",
    :runame => "Иностранка",
    :taxonomy => publishers,
    :description => "",
    :rudescription => "",
    :parent => "Publishers",
    :position => 3,
    :products => [
      products[:the_one],

    ]
  },
  {
    :name => "Authors",
    :runame => "Авторы",
    :taxonomy => authors,
    :position => 0
  },
  {
    :name => "E. Yanushko",
    :runame => "Е. Янушко",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
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
    :name => "John Green",
    :runame => "Джон Гринн",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_fault],
    ]
  },
    {
    :name => "Zakhar Prilepin",
    :runame => "Захар Прилепин",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:abode],
    ]
  },
    {
    :name => "Jojo Moyes",
    :runame => "Джоджо Мойес",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_one],
    ]
  },
    {
    :name => "Viktoriya Tokareva",
    :runame => "Виктория Токарева",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:have_a_mercy],
    ]
  },
    {
    :name => "Dina Rubina",
    :runame => "Дина Рубина",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:russian_canary],
    ]
  },
    {
    :name => "Liane Moriarty",
    :runame => "Лиана Мориарти",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:husbands],
    ]
  },
    {
    :name => "Anna Gavalda",
    :runame => "Анна Гавальда",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:billi],
    ]
  },
    {
    :name => "Boris Akunin",
    :runame => "Борис Акунин",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_most],
    ]
  },
      {
    :name => "Diane Setterfield",
    :runame => "Диана Саттерфилд",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:bellman]
    ]
  },
      {
    :name => "Aleksandra  Marinina",
    :runame => "Александра Маринина",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_sequel],
    ]
  },
      {
    :name => "Tatyana Tolstaya",
    :runame => "Татьяна Толстая",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:light_worlds],
    ]
  },
      {
    :name => "Vadim Panov",
    :runame => "Вадим Панов",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_green_gambit],
    ]
  },
      {
    :name => "Nick Perumov",
    :runame => "Ник Перумов",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:death],
    ]
  },
      {
    :name => "Max Frei",
    :runame => "Макс Фрай",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_stranger],
    ]
  },
      {
    :name => "Michael Weller",
    :runame => "Михаил Веллер",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_wanderer],
    ]
  },
      {
    :name => "Paulo Coelho",
    :runame => "Пауло Коэльо",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:adultery],
    ]
  },
      {
    :name => "Helen Fielding",
    :runame => "Хелен Филдинг",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:bridget],
    ]
  },
      {
    :name => "Janusz Wisniewski",
    :runame => "Януш Вишневский",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:grand],
    ]
  },
      {
    :name => "Gillian Flynn",
    :runame => "Гиллиан Флинн",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:dark_places]
    ]
  },
  {
    :name => "Vladimir Sorokin",
    :runame => "Владимир Сорокин",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:russian_brutal],
    ]
  },
  {
    :name => "Darya Dezombre",
    :runame => "Дарья Дезомбре",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:the_phantom],
    ]
  },
  {
    :name => "Stephen King",
    :runame => "Стивен Кинг",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:mr],
    ]
  },
  {
    :name => "Mariya Metlitskaya",
    :runame => "Мария Метлицкая",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:and_life],
    ]
  },
  {
    :name => "Alice Munro",
    :runame => "Элис Манро",
    :taxonomy => authors,
    :description => "",
    :rudescription => "",
    :parent => "Authors",
    :position => 1,
    :products => [
      products[:dance]
    ]
  },
  {
    :name => "Suggested Titles",
    :runame => "Рекомендованные издания",
    :taxonomy => suggested,
    :parent => "Suggested Titles",
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
    :runame => "Новинки",
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
  },
  {
    :name => "Bestsellers",
    :runame => "Бестселлеры",
    :taxonomy => bestsellers,
    :parent => "Bestsellers",
    :products => [
      products[:the_fault],
      products[:the_one],
      products[:have_a_mercy],
      products[:russian_canary],
      products[:husbands],
      products[:billi],
      products[:the_most],
      products[:bellman]
    ]
  },
  {
    :name => "New",
    :runame => "Новинки",
    :taxonomy => new_items,
    :parent => "New",
    :products => [
      products[:the_sequel],
      products[:light_worlds],
      products[:the_green_gambit],
      products[:death],
      products[:the_stranger],
      products[:the_wanderer],
      products[:adultery],
      products[:bridget],
      products[:grand],
      products[:dark_places]
    ]
  },
  {
    :name => "Comming",
    :runame => "Скоро поступление",
    :taxonomy => comming_soon,
    :parent => "Comming",
    :products => [
      products[:russian_brutal],
      products[:the_phantom],
      products[:mr],
      products[:and_life],
      products[:dance]
    ]
  }
]


taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs.except(:runame, :rudescription))
    item = Spree::Taxon.find_by(:name => taxon_attrs[:name])
    Spree::Taxon::Translation.create!(:spree_taxon_id => item.id, :locale => "ru", :name => "#{taxon_attrs[:runame]}", :description => "#{taxon_attrs[:rudescription]}")
  else
    item = Spree::Taxon.find_by(:name => taxon_attrs[:name])    
    Spree::Taxon::Translation.create!(:spree_taxon_id => item.id, :locale => "ru", :name => "#{taxon_attrs[:runame]}", :description => "#{taxon_attrs[:rudescription]}")
  end
end

puts "SAMPLE DATA -> Created taxons"
     
