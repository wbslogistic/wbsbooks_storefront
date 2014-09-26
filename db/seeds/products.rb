# encoding: UTF-8
default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {   
  :available_on => Time.zone.now
}

products = [
  {
    :name => "All about nothing. How to get the most by investing at least",
    :runame => "Все из ничего. Как получить максимум, вложив минимум",
    :price => 7.36,
    :description => "Intelligent and fascinating book on how to do business with limited resources, if not entirely without them. If the company is unable (or unwilling) to overspend and even if there is no money at all, you can compete successfully in the market. This book will tell you how to motivate employees to work with enthusiasm, with possession of meager wages and working hours – if not for thank you; How to squeeze a dime to Board of Directors; how absolutely free roll brand; How to barter goods and services; How to turn your product into a supporter of any person is the customer, partner or investor and put lots of fresh ideas from the Wikipedia experience, Mozilla, doctors without borders, Teach for America and other well-known companies. Remember The Start-up Kawasaki? So here is this book the same level only for different audiences – for those who have already started a business, but not too happy with the outcome, or those who did not recover after the crisis. It ",
    :rudescription => "Умная и увлекательная книга о том, как вести бизнес при ограниченных ресурсах, а то и совсем без них. Если компания не может (или не хочет) сорить деньгами и даже если денег нет вообще, можно успешно конкурировать на рынке. Эта книга расскажет, как мотивировать сотрудников трудиться с энтузиазмом при ненормированном рабочем дне и мизерной зарплате – а то и вовсе за спасибо; как выжать до копейки совет директоров; как абсолютно бесплатно раскрутить бренд; как получать товары и услуги по бартеру; как превратить в сторонника своего продукта любого человека – клиента, партнера или инвестора и подкинет множество других свежих идей из опыта Wikipedia, Mozilla, Врачи без границ, Teach for America и других известных компаний. Помните Стартап Кавасаки? Так вот это книга того же уровня только для другой аудитории – для тех, кто уже запустил бизнес, но не слишком доволен результатом, или тех, кто никак не оправится после кризиса. Она будет очень полезной...",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Military methods in business. Tactics",
    :runame => "Военные методы в бизнесе. Тактика",
    :price => 5.37,
    :description => "Business is war. And there are thousand-year experience of battles, defeats and victories. Why Commerce does not use this knowledge? The answer is quite simple: the business world is zaznalsâ and took a course on construction of civilized business. Now Western teachers convince us that business is a gentleman's peace talks. Although, when it comes to money, the noble jousting instantly turn into carnage, which primarily are those who are convinced that the game goes on, tournament regulation. After reading this book, you will be relieved of having to learn from your mistakes because learn to operate correctly, using the laws of military art in the art business.",
    :rudescription => "Бизнес - это война. И есть тысячелетний опыт битв, поражений и побед. Почему коммерция не использует эти знания? Ответ достаточно прост: деловой мир зазнался и взял курс на построение цивилизованного бизнеса. Теперь западные учителя убеждают нас, что бизнес - это мирные переговоры джентльменов. Хотя, когда дело касается денег, благородные рыцарские турниры моментально превращаются в бойню, в которой в первую очередь гибнут те, кого убедили, что игра идет по турнирным правилам. Прочитав эту книгу, вы будете избавлены от того, чтобы учиться на своих ошибках, потому что научитесь действовать безошибочно, используя законы военного искусства в искусстве коммерческом.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Judo strategy. How to force competitors to their advantage",
    :runame => "Дзюдо стратегия. Как сделать силу конкурентов своим преимуществом",
    :price => 4.26,
    :description => "In its innovative book of key specialists of the Harvard Business School for example, brilliant analogy with combat strategy Judo open secrets of how small companies, faced on the battlefield of business with a major competitor, could cause him to lose.",
    :rudescription => "Дзюдо - боевое искусство, использующее скорость, гибкость и проворство бойца, чтобы одержать верх над более мощным соперником. В своей инновационной книге ведущие специалисты Гарвардской Школы бизнеса на примере блестящей аналогии с боевой стратегией дзюдо раскрывают секреты того, как небольшие компании, столкнувшись на поле боя бизнеса с крупным конкурентом, могут нанести ему поражение. Горячо рекомендуемая книга для каждого менеджера - это ваше мощное тайное оружие конкуренции и победы!",
    :shipping_category => default_shipping_category
  },
  {
    :name => "20th Century Art/art of the 20th century",
    :runame => "20th Century Art / Искусство XX века",
    :price => 28.83,
    :description => "The 20th century in art began in 1907 with Les Demoiselles d'Avignon Picasso's. This work marked a breach with the past and one of the most important paths of research for the future. In fact, at about the same time the first avantgarde movements began the experiment with form, language, techniques and materials that would characterize the whole entury: Cubism, Expressionism, Abstract Art, Dadaism and utunsm opened the doors to new expressive possibilities. There was a new relationship between art and reality: artists played with the forms, the objects, and the materials and considered art a form of language. Other ideas came from philosophy and psychoanalysis: the unconscious was depicted in the Surrealists ' paintings. Contemporaneously, the short century Europe subjected to two World Wars. Picasso depicted the horror of war in Guernica. Many of his colleagues were forced to flee from Nazi Germany, which also terminated the extraordinary experience of the ",
    :rudescription => "The 20th century in art began in 1907 with Picasso's Les Demoiselles d'Avignon. This work marked a breach with the past and one of the most important paths of research for the future. In fact, at about the same time the first avantgarde movements began the experiments with form, language, techniques and materials that would characterize the whole entury: Cubism, Expressionism, Abstract Art, utunsm and Dadaism opened the doors to new expressive possibilities. There was a new relationship between art and reality: artists played with the forms, the objects, and the materials and considered art a form of language. Other ideas came from philosophy and psychoanalysis: the unconscious was depicted in the Surrealists' paintings. Contemporaneously, the short century subjected Europe to two World Wars. Picasso depicted the horror of war in Guernica. Many of his colleagues were forced to flee from Nazi Germany, which also terminated the extraordinary experience of the ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Baroque",
    :runame => "Baroque / Барокко",
    :price => 28.83,
    :description => "The definition of the Baroque age, meaning the set of complex cultural and artistic expressions that developed in Europe during the 17th century, is still subject to debate among critics and historians. In one of its most commonly accepted meanings, Baroque describes some aspects of 17th century art, with sumptuous Roma at the centre, that upset the proportions and static harmony of the Renaissance - already undermined by Mannerism during the previous century - through the use of curves, strange movements of forms, the daring optics of illusionism and theatricality. Bernini, Borromini, da Cortona and Rubrns were, among others, decisive examples. In addition to these manifestly theatrical expressions, however, the art of the 17th century also included quite different trends such as the naturalism in the works of Caravaggio, classicism in the works of the Carraccis and of Poussin, the intimacy of Vermeer and the pictorial atmospheres in the works of Rembrandt and Velazquez. A reflection of the social, political, scientific, cultural and religious events that profoundly churned European society, the Baroque illuminated Spain, France, the Netherlands and other areas of Europe, and even the rest of the world, with new splendour, from the time of its birth in Italy where it was sponsored by the Church and powerful families. At the same time, the emergence of new patrons and collectors meant that it followed new traces encountering music, literature and theatre. At the beginning of the 18th century, following the mature evolution of Baroque art, the Rococo was born in France - and then expanded to the rest of Europe - characterized by airy forms, arabesques, elegance and luminous colours in painting as well as sculpture and architecture; instead of heroic or sacred themes, it embodied a more ight-hearted glance at aristocratic life, or scenes of daily life that might be gay or frivolous or even quiet. Watteau, Fragonard, Boucher, Canaletto and Bellotto were representatives of this style in painting while, in architecture, Neumann and the magnificent Residenz in Wurzburg are particularly worthy of note.",
    :rudescription => "The definition of the Baroque age, meaning the set of complex cultural and artistic expressions that developed in Europe during the 17th century, is still subject to debate among critics and historians. In one of its most commonly accepted meanings, Baroque describes some aspects of 17th century art, with sumptuous Roma at the centre, that upset the proportions and static harmony of the Renaissance - already undermined by Mannerism during the previous century - through the use of curves, strange movements of forms, the daring optics of illusionism and theatricality. Bernini, Borromini, da Cortona and Rubrns were, among others, decisive examples. In addition to these manifestly theatrical expressions, however, the art of the 17th century also included quite different trends such as the naturalism in the works of Caravaggio, classicism in the works of the Carraccis and of Poussin, the intimacy of Vermeer and the pictorial atmospheres in the works of Rembrandt and Velazquez. A...",
    :shipping_category => default_shipping_category
  },
  {
    :name => "An ocean patrol. In 2 volumes. Volume 2. Wind from the ocean",
    :runame => "Океанский патруль. В 2 томах. Том 2. Ветер с океана",
    :price => 5.00,
    :description => "The Great Patriotic War at sea! Here is the fighting is not only against the enemy but also the ruthless nature. It is much more difficult and dangerous than it is on land... One very important thing to remember – each hero from the Northern Fleet is remembered and awaited on the shore. Ocean Petrol is the first novel by Valentin Pikul, one of the best military sagas of the XX century.",
    :rudescription => "Великая Отечественная война - на море! Здесь сражаются и против врага, и против беспощадной стихии. Здесь - труднее и опаснее, чем на суше... И важно помнить одно - каждого из героев Северного флота помнят и ждут на берегу. Это - Океанский патруль. Первый роман Валентина Пикуля. Одна из лучших военных саг ХХ столетия!",
    :shipping_category => default_shipping_category
  },
  {
    :name => "War and peace. Book 2. Volume 3-4",
    :runame => "Война и мир. Книга 2. Тома 3-4",
    :price => 7,
    :description => "War and Peace broadly focuses on Napoleon’s invasion of Russia in 1812 and follows three of the most well-known characters in literature: Pierre Bezukhov, the illegitimate son of a count who is fighting for his inheritance and yearning for spiritual fulfillment; Prince Andrei Bolkonsky, who leaves his family behind to fight in the war against Napoleon; and Natasha Rostov, the beautiful young daughter of a nobleman who intrigues both men. A s Napoleon’s army invades, Tolstoy brilliantly follows characters from diverse backgrounds—peasants and nobility, civilians and soldiers—as they struggle with the problems unique to their era, their history, and their culture. And as the novel progresses, these characters transcend their specificity, becoming some of the most moving—and human—figures in world literature.",
    :rudescription => "Великий роман-эпопея Льва Толстого чудесным образом, как огромная мозаика, сложен из тысяч картин - батальных, бальных, любовных, бытовых, политических, философских, портретных, пейзажных, психологических... Все он неслучайны, уместны, своевременны: за сюжетными ответвлениями, ходами, пересечениями стоят предопределение и авторская воля. Ритм романа, увлекающий читателя, сверен с пульсом живой истории: он то заторможен, как реформаторская деятельность Сперанского; то стремителен, как комета 1812 года; то спокоен, как Кутузов в Филях; то методичен, как народная дубина; то необратим, как бегство французов по Смоленской дороге... Все эти картины, сплетаясь, образуют самое знаменитое в мире произведение классической русской литературы - Война и мир остается наиболее издаваемым романом во всех странах.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Wife of Peter The Great. Our First Empress",
    :runame => "",
    :price => 4.66,
    :description => "A.S. Pushkin was right saying that the Russian history has enough stories and passions that Shakespeare could not even dream of. Let's take at least a miracle unbelievable fate of Martha Skavronskaya, a poor orphan, a common girl, the widow of a Swedish dragoon, who became the wife of Peter the Great and the all-Russian Empress Catherine the First. From a soldiers' tent to the bed of the field-marshal Sheremetev, then to the bedroom of his Highness Prince Menshikov and, finally, to the Tsar's bedroom, and it's all within a year! Anne Boleyn or Marquise Pompadour even can't compete! And let the jealous talk about the Queen of soldiers, Catherine was smart enough to become not just a concubine, not even a mistress but the crowned Empress and not only keep her head on but to inherit the throne after the death of her spouse. Do you want to know the secret of her charm, how she bewitched Peter the First and if she put her hand to his untimely death?",
    :rudescription => "",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Learn to draw fantasy characters",
    :runame => "Учимся рисовать героев фэнтези",
    :price => 5.06,
    :description => "This book is an excellent tutorial on drawing for those who adore the fantastic heroes! It will show as in four stages, starting with an outline is drawn correctly and is painted figure of a dragon Knight, Elf, Mage or forest fairy.",
    :rudescription => "Эта книга - прекрасный самоучитель по рисованию для тех, кто обожает фантастических героев! Она покажет, как в четыре этапа, начиная с наброска, правильно рисуется и раскрашивается фигура дракона, рыцаря, эльфа, мага или лесной феи.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Paris finds. The Era Of Pushkin",
    :runame => "Парижские находки. Эпоха Пушкина",
    :price => 8.71,
    :description => "1993 publication of the year. Good state of preservation. An outstanding scholar, collector, writer, social activist, and s. Silberstein (1905-1988) devoted his life to the study and promotion of Russian culture, its collection of relics. In the author's new book, conceived during his lifetime, was a series of essays published in the journal Ogonyok under the title Paris finds. It's about finding stories in France and the return home of many relics of the Russian culture. For professionals and lovers of fine art. In the book of about 200 full-color and tone illustrations.",
    :rudescription => "Издание 1993 года. Сохранность хорошая. Выдающийся учёный, литератор, коллекционер, общественный деятель, И. С. Зильберштейн (1905-1988) посвятил свою жизнь исследованию и пропаганде русской культуры, собиранию её реликвий. В новую книгу автора, задуманную ещё при его жизни, вошла серия очерков, опубликованных в журнале Огонёк под общим названием Парижские находки. Это рассказы о поисках во Франции и возвращении на Родину многих реликвий русской культуры. Для специалистов и любителей изобразительного искусства. В книге около 200 цветных и тоновых иллюстраций.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Star dance with Oksana Sidorenko and Alexander Nevsky",
    :runame => "Звездные танцы с Оксаной Сидоренко и Александром Невским",
    :price => 7.68,
    :description => "The desire to dream is halfway to victory. This book is a guide to action: to overcome the doubts and stay on track to achieve its goal. What is the secret of success known holder of the title Mr. universe Alexander Nevsky and world ball dances champions Oksana Sidorenko? In this book they will tell about their journey to dancing and intense four-month life of the project. Been finalists on dancing with the stars will allow each person to ten taught ballroom dancing, not leaving the House. Every dance is accompanied by step-by-step illustrations.",
    :rudescription => "Стремление к мечте - это полпути к победе. Эта книга - руководство к действию: преодолеть сомнения и не сбиться с пути, чтобы достигнуть поставленной цели. В чем секрет успеха известного обладателя титула Мистер Вселенная Александра Невского и чемпионки мира по бальным танцам Оксаны Сидоренко? В этой книге они расскажут о своем пути к танцам и насыщенной четырехмесячной жизни на проекте. Танцкласс от финалистов проекта Танцы со Звездами позволит каждому желающему самостоятельно разучить десять бальных танцев, не выходя из дома. Пошаговые описания каждого танца сопровождаются иллюстрациями.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Viktor Suvorov without censorship. The cave against Stalinism",
    :runame => "Виктор Суворов без цензуры. Против пещерного сталинизма",
    :price => 8.71,
    :description => "The whole truth of Viktor Suvorov without regard to ideological inhibitions and behind-the-scenes censorship! The latest evidence of his hypotheses. The most poignant speeches in support of him. Exposing Stalin's mythology, on which rests a totalitarian regime. An open challenge to the historic surrendered. Viktor Suvorov's book is not only a lie detector that outputs on clean water cave and Stalinists nightingales , but the Kremlin propaganda machine and the detector parvdy, uniting millions of readers who no longer are content with false Soviet myths and want to get to the truth about the real causes and the main perpetrators of World War II!",
    :rudescription => "Вся правда Виктора Суворова без оглядки на идеологические запреты и негласную цензуру! Самые свежие доказательства его гипотез. Самые острые выступления в его поддержку. Разоблачение сталинской мифологии, на которой держится тоталитарный режим. Открытый вызов историческому официозу. Книги Виктора Суворова - это не только детектор лжи, выводящий на чистую воду пещерных сталинистов и соловьев кремлевского агитпропа, но и детектор парвды, объединивший миллионы читателей, которые больше не довольствуются лживыми советскими мифами, а хотят докопаться до истины о подлинных причинах и главных виновниках Второй Мировой!",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Complete encyclopedia of medicinal plants",
    :runame => "Полная энциклопедия лекарственных растений",
    :price => 13.38,
    :description => "Medicinal plants-the same richness as Russian oil or ran. Traditional medicine and a strict science amicably confirmed the healing properties of many herbs and shrubs. Unlike the black gold can take advantage of the Green pharmacy free of charge for your own good. The encyclopedia will reveal the secrets of medicinal herbs and shrubs that can be seen, walking in the forest, in the field or in the meadow. The book is written by Alexander Nikolayevich Cicilinym-a real collector, scientist, candidate of biological sciences, head of the Botanical Garden in Russian Scientific Research Institute of medicinal and aromatic plants. Alexander Nikolayevich obsessing about medicinal and tells representatives of the Russian flora, leads carefully collected ancient charges and recipes for virtually all known diseases. In the book are many beautiful color photographs taken by himself. Perfectly decorated encyclopedia will delight connoisseurs of natural treatments and go ...",
    :rudescription => "Лекарственные растения - такое же богатство, как российские нефть или ran. Народная медицина и строгая наука дружно подтверждают лечебные свойства многих трав и кустарников. В отличие от черного золота каждый может воспользоваться зеленой аптекой бесплатно себе во благо. Энциклопедия откроет целебные секреты трав и кустарников, которые можно встретить, гуляя в лесу, в поле или на лугу. Книга написана Александром Николаевичем Цицилиным - настоящим собирателем, ученым, кандидатом биологических наук, заведующим Ботаническим садом Всероссийского научно-исследовательского института лекарственных и ароматических растений. Александр Николаевич увлеченно и понятно рассказывает о лечебных представителях российской флоры, приводит бережно собранные старинные сборы и рецепты практически для всех известных заболеваний. В книге множество прекрасных цветных фотографий, сделанных им самим. Отлично оформленная энциклопедия порадует ценителей природных методов лечения и пойдет...",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Words. Developing book with stickers",
    :runame => "Слова.Развивающая книжка с наклейками.",
    :price => 3.41,
    :description => "Words. Developing book with stickers.",
    :rudescription => "Слова.Развивающая книжка с наклейками.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "My ABC Sticker Activity Book",
    :runame => "Алфавит.Развивающая книжка с наклейками.",
    :price => 3.41,
    :description => "This book will open for children the road to the fascinating world! The world where there live letters, games, words! Cheerful tasks will teach the child to distinguish letters! Bright stickers will turn study into interesting game! The colourful poster will help to acquire a material better! For children of 3 years.",
    :rudescription => "Эта книга откроет детям дорогу в увлекательный мир! Мир, где живут буквы, игры, слова! Веселые задания научат ребенка различать буквы! Яркие наклейки превратят учебу в интересную игру! Красочный плакат поможет лучше усвоить материал! Для детей от 3 лет.",
    :shipping_category => default_shipping_category
  }
]
products.each do |product_attrs|
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(:name => product_attrs[:name], :price => product_attrs[:price], :description => product_attrs[:description], :shipping_category => product_attrs[:shipping_category]))

  product.reload
  product.shipping_category = default_shipping_category
  product.save!

  item = Spree::Product.find_by(:name => product_attrs[:name])
  Spree::Product::Translation.create!(:spree_product_id => item.id, :locale => "ru", :name => "#{product_attrs[:runame]}", :description => "#{product_attrs[:rudescription]}")
end

Spree::Config[:currency] = "USD"

puts 'SAMPLE DATA -> New products created'