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
    :runame => "Категории",
    :taxonomy => categories,
    :position => 0,
    :products => [
      products[:th_century],
      products[:baroque]
    ]
  },
   {
    :name => "Books in foreign languages",
    :runame => "Книги на иностранных языках",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Books in English",
    :runame => "Книги на английском языке",
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
  {
    :name => "Limited Edition",
    :runame => "Ограниченные издания",
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
    :name => "Training and education",
    :runame => "Занятия и обучение",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 0
  },
  {
    :name => "Specials",
    :runame => "Акции",
    :taxonomy => specials,
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
      products[:ocean_patrol],
      products[:war_and_peace],
      products[:peter_the_great],
      products[:all_about_nothing],
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
    :description => "<p>This name uses Eastern Slavic naming customs;</p> the patronymic is Nikolayevich and the family name is Tolstoy. Count Lev Nikolayevich Tolstoy (Russian: Лев Никола́евич Толсто́й, pronounced [lʲef nʲɪkɐˈlaɪvʲɪt͡ɕ tɐlˈstoj] ( listen); 9 September [O.S. 28 August] 1828 – 20 November [O.S. 7 November] 1910), also known as Leo Tolstoy, was a Russian writer, philosopher and political thinker who primarily wrote novels and short stories. Tolstoy was a master of realistic fiction and is widely considered one of the greatest novelists of all time. He is best known for two long novels, War and Peace (1869) and Anna Karenina (1877). Tolstoy first achieved literary acclaim in his 20s with his semi-autobiographical trilogy of novels, Childhood, Boyhood, and Youth (1852–1856) and Sevastopol Sketches (1855), based on his experiences in the Crimean War. His fiction output also includes two additional novels, dozens of short stories, and several famous novellas, including The Death of Ivan Ilyich, Family Happiness, and Hadji Murad. Later in life, he also wrote plays and essays.",
    :rudescription => "<p>Это имя используется восточнославянских именования обычаи; </p> отчество является Николаевич и фамилии является Толстой. Граф Лев Николаевич Толстой (русский: Лев Николаевич Толстой, произносится [Леф nʲɪkɐlaɪvʲɪt͡ɕ tɐlstoj] (слушать); 9 сентября [OS 28 августа] 1828 - 20 ноября [OS 7 ноября] 1910), также известный как Лев Толстой, был русский писатель , философ и политический мыслитель, который, прежде всего, писал романы и рассказы. Толстой был мастером реалистической фантастики и считается одним из величайших романистов всех времен. Он является самым известным за двумя длинными романов, войны и мира (1869) и Анны Карениной (1877). Толстой впервые осуществлено литературное признание в его 20-ых с его полу-автобиографической трилогии романов, детства, отрочества и молодежи (1852-1856) и Севастопольских рассказах (1855), на основе своего опыта в Крымской войне. Его фантастика выход также включает в себя два дополнительных романов, десятки рассказов, и нескольких известных повестей, в том числе Смерти Ивана Ильича, семейного счастья, и Хаджи-Мурата. Позже в жизни, он также писал пьесы и эссе.",
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
    :runame => "Рекомендованные издания",
    :taxonomy => suggested,
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
    Spree::Taxon.create!(taxon_attrs.except(:runame, :rudescription))
    item = Spree::Taxon.find_by(:name => taxon_attrs[:name])
    Spree::Taxon::Translation.create!(:spree_taxon_id => item.id, :locale => "ru", :name => "#{taxon_attrs[:runame]}", :description => "#{taxon_attrs[:rudescription]}")
  else
    item = Spree::Taxon.find_by(:name => taxon_attrs[:name])    
    Spree::Taxon::Translation.create!(:spree_taxon_id => item.id, :locale => "ru", :name => "#{taxon_attrs[:runame]}", :description => "#{taxon_attrs[:rudescription]}")
  end
end

puts "SAMPLE DATA -> Created taxons"
     
