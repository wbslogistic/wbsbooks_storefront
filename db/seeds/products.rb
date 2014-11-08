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
  },
#bestsellers
  {
    :name => "The Fault in Our Stars",
    :runame => "Выше только звезды",
    :price => 5.19,
    :description => "There are the 10.7 million copies of John Green's book, The Fault In Our Stars, sold to date, the forthcoming Fox movie, the 2.3 million Twitter followers. Despite the tumour-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazel's story is about to be completely rewritten. Insightful, bold, irreverent, and raw, The Fault in Our Stars is award-winning author John Green's most ambitious and heartbreaking work yet, brilliantly exploring the funny, thrilling, and tragic business of being alive and in love. The Sun on Sunday (Fabulous Magazine) So good I think it should be compulsory reading for everyone! Sunday Times (Culture) 'A touching, often fiercely funny novel'",
    :rudescription => "Этот роман поразил весь мир! В 2012 году он попал на первую строчку рейтингов, по версии 'Time', 'Entertainment Weekly', 'New York Times', 'Wall Street Journal',- 'Publishers Weekly' и еще ВОСЬМИ периодических изданий! Пронзительная история любви двух подростков, неизлечимо больных, не знающих, что ждет их завтра, не имеющих будущего, вынужденных каждый день совершать подвиг, чтобы жить, дышать, любить, нашла отклик в душах миллионов читателей. При этом Хейзел и Огастус - обыкновенные молодые люди, они бывают резкими, обидчивыми, ревнивыми, даже злопамятными. Им не на ком выместить всю горечь и боль от того, что жизнь оказалась слишком жестока к ним. Виновных нет. Разве что только звезды? Как противостоят злому року двое влюбленных, вы прочтете в замечательной книге Джона Грина, а 5 июня в широкий прокат вышел кинокартина режиссера Джоша Буна ВИНОВАТЫ ЗВЕЗДЫ, которую с нетерпением ждали  все, кто уже прочитал эту историю любви. По данным на январь 2013 года, в мире было продано более миллиона книг ВИНОВАТЫ ЗВЕЗДЫ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Abode",
    :runame => "Обитель",
    :price => 6.24,
    :description => "Hailed as a new Leo Tolstoy, Zakhar Prilepin has experienced a meteoric rise, both as a literary phenomenon and as a political activist. At 38, he is one of Russia’s most acclaimed authors, and his novel Sin was voted one of the most important books to come out of Russia in the past decade. 'Abode'.  Solovki, the end of the twenties. The last act of the drama of the Silver Age. A broad canvas of a Bosh's splendour, with dozens of characters, with distinct traces to the past and anticipation of storms of the future.  Majestic nature  and subtly layered story populated by characters so well imagined that they’re hard to part with. A story burrowing deep into the murkiest corners of the human psyche.",
    :rudescription => "Соловки, конец двадцатых годов. Последний акт драмы Серебряного века. Широкое полотно босховского размаха, с десятками персонажей, с отчетливыми следами прошлого и отблесками гроз будущего - и целая жизнь, уместившаяся в одну осень. Величественная природа - и клубок человеческих судеб, где невозможно отличить палачей от жертв. Трагическая история одной любви - и история всей страны с ее болью, кровью, ненавистью, отраженная в Соловецком острове, как в зеркале. Мощный текст о степени личной свободы и о степени физических возможностей человека.",
    :shipping_category => default_shipping_category
  },
    {
    :name => "The One Plus One",
    :runame => "Один плюс один",
    :price => 4.67,
    :description => "First time in Russian! One single mom. One chaotic family. One quirky stranger. One irresistible love story from the New York Times bestselling author of Me Before You Suppose your life sucks. A lot. Your husband has done a vanishing act, your teenage stepson is being bullied and your math whiz daughter has a once-in-a-lifetime opportunity that you can’t afford to pay for. That’s Jess’s life in a nutshell—until an unexpected knight-in-shining-armour offers to rescue them. Only Jess’s knight turns out to be Geeky Ed, the obnoxious tech millionaire whose vacation home she happens to clean. But Ed has big problems of his own, and driving the dysfunctional family to the Math Olympiad feels like his first unselfish act in ages . . . maybe ever.",
    :rudescription => "В жизни Джесс Томас наступила черная полоса. Она мать-одиночка и вкалывает на двух работах. У нее на руках двое детей. Сын-подросток, которого школьные хулиганы избивают за то, что он не похож на других. Десятилетняя дочка с потрясающими математическими способностями, которой обязательно нужно попасть на олимпиаду по математике. Кажется, все идет ко дну, и спасти семью может только рыцарь на белом коне... Эд Николе — преуспевающий компьютерщик, и именно его загородный дом время от времени убирает Джесс. Но и у этого внешне благополучного человека все пошло наперекосяк. Свое будущее Эд видит исключительно в мрачных тонах, однако он не понаслышке знает, что такое одиночество, а потому хочет по­мочь Джесс и ее детям. Так начинается необычный любовный роман, история о встрече двух одиночеств... Книги Джоджо Мойес переведены на многие языки мира, регулярно входят в список бестселлеров 'Нью-Йорк таймс', а права на их экранизацию покупают ведущие киностудии Голливуда. Впервые на русском языке!",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Have a mercy on bastards",
    :runame => "Сволочей тоже жалко",
    :price => 4.81,
    :description => "An ingenious writer Viktoriya Tokareva is firmly a household name. Here is yet another brilliant collection of witty writing telling smart things about how tenuous power relations are between men and women, and how often couples are at the mercy of forces beyond their control. The collection also includes a movie script  'Why not?' Written by Victoria Tokareva for the film company 'Uzbek film' and specifically re-edited by the author for this publication.",
    :rudescription => "Совершенно родные и такие близкие по духу персонажи, ощущение полнейшей вовлеченности в описываемые события и судьбы, удивительный юмор, пронзительное сопереживание и превратности любви - новая книга Виктории Токаревой дарит счастье всем нам. В сборник вошли новые рассказы, повесть, а также малоизвестный читателям литературный сценарий 'Вай нот?', написанный Викторией Токаревой для киностудии 'Узбек-фильм'' и заново отредактированный автором специально для данного издания.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Russian Canary. Zheltukhin",
    :runame => "Русская канарейка. Желтухин",
    :price => 7.63,
    :description => "Leon Etinger possesses a surprisingly rich and deep voice together with many other talents, that come handy in his no-nonsense work as a field investigator of one of  intelligence services. The nicknamed Russian canary officer decides to quit the job and reinvent himself in opera singing. But is there such thing as a former spy? 'Voice' is the second a instalment of the thoroughbred trilogy about the nature of identity by Dina Rubina 'Russian canary'.",
    :rudescription => "Кипучее, неизбывно музыкальное одесское семейство и - алма-атинская семья скрытных, молчаливых странников... На протяжении столетия их связывает только тоненькая ниточка птичьего рода - блистательный маэстро кенарь Желтухин и его потомки. На исходе XX века сумбурная история оседает горькими и сладкими воспоминаниями, а на свет рождаются новые люди, в том числе 'последний по времени Этингер', которому уготована поразительная, а временами и подозрительная судьба. ЖЕЛТУХИН - первая книга трилогии Дины Рубиной РУССКАЯ КАНАРЕЙКА, красочной, бурной и многоликой семейной саги...",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Husband's Secret",
    :runame => "Тайна моего мужа",
    :price => 4.42,
    :description => "Acclaimed author Liane Moriarty has written a gripping, thought-provoking novel about how well it is really possible to know our spouses—and, ultimately, ourselves. Imagine that your husband wrote you a letter, to be opened after his death. Imagine, too, that the letter contains his deepest, darkest secret—something with the potential to destroy not just the life you built together, but the lives of others as well. Imagine, then, that you stumble across that letter while your husband is still very much alive. . . . Cecilia Fitzpatrick has achieved it all—she’s an incredibly successful businesswoman, a pillar of her small community, and a devoted wife and mother. Her life is as orderly and spotless as her home. But that letter is about to change everything, and not just for her: Rachel and Tess barely know Cecilia—or each other—but they too are about to feel the earth-shattering repercussions of her husband’s secret. First time in Russian!",
    :rudescription => "Некоторым тайнам лучше оставаться взаперти навсегда. Представьте себе, что ваш муж написал письмо, которое вы должны вскрыть после его смерти. Вообразите, что письмо раскрывает мрачную тайну, которая способна разрушить не только ваш устоявшийся быт, но и искалечить судьбы многих окружающих вас людей. Сесилия Фицпатрик - прекрасная жена и мать трех подрастающих дочерей - случайно находит письмо, написанное ее супругом много лет назад с просьбой вскрыть после его смерти. Но ее муж еще жив и здоров. Он просит ни в коем случае не вскрывать это послание. Однако Сесилия все же вскрывает письмо, и страшная тайна, которую она узнает из него, кардинально изменяет жизнь не только ее семьи, но и людей, которых она едва знает… Впервые на русском языке!",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Billi",
    :runame => "Билли",
    :price => 5.19,
    :description => "Billie is a new fascinating novel by award-winning French novelist Anna Gavalda who is hugely popular in Russia.Billie is a novel-shock, novel-explosion, novel-revelation. There is no romance in its conventional sense here – only the harsh reality and an attempt to find a way out. Nevertheless, it is still a novel about love and friendship. Frank and Billie are  scheduled for the same choir class, but also they share the love of Alfred de Musset. A beautiful love story between two ugly ducklings unfolds who are there for each other to remind that one fine day they would turn into magnificent swans.",
    :rudescription => "БИЛЛИ - новый роман одной из самых популярных французских писательниц Анны Гавальда, выход которого осенью 2013 года взбудоражил французскую аудиторию. Стартовый тираж БИЛЛИ только во Франции составил 300 000 экземпляров! БИЛЛИ - роман-шок, роман-взрыв, роман-откровение. Здесь нет романтики в ее привычном понимании, здесь - тяжелая реальность и попытка выбраться из нее. И тем не менее это все равно роман о любви и дружбе, которые способны до неузнаваемости преобразить человека, 'поднять' его из самого глубоко дна. Два забитых, одиноких подростка из глубокого французского захолустья долго не замечали друг друга. Билли страдала от нищеты, от грубости и непонимания в семье. Франка сторонились, потому что он был не такой, как все: слишком слабый, слишком утонченный, слишком женственный. Но однажды судьба сводит их вместе: волей жребия Билли и Франку выпадает вместе разучивать сценку из пьесы Альфреда де Мюссе 'С любовью не шутят'. С этого момента и начинается история их большой дружбы, благодаря которой оба 'гадких утенка', отражаясь в глазах друг друга, взрослеют и превращаются в прекрасных лебедей.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The most mysterious secret and other stories",
    :runame => "Самая таинственная тайна и другие сюжеты",
    :price => 9.64,
    :description => "From hugely popular Boris Akunin best known as writer of detective and historical fiction. 'The most mysterious secret and other stories' is the third book of the popular series 'Love of history.' This is a precious collection of historical miniatures any of what could be turned into an exciting novel. Readers know Boris Akunin as a brilliant storyteller and polemicist, author of unmatched detective novels and an ambitious project 'History of Russia', edition of the first volume of which has already sold more than 150,000 copies and confirmed his reputation as a great historian. 'Love of History' is an entertaining yet informative and above all essential reading for any modern person . The first instalments of the series 'The love of history' - 'The most terrible villain and other stories' and 'A Princess and other stories' have won Akunin lots of new fans and sold 200,000 copies to date! Most of the stories included in the 'The most mysterious secret' follow real historical events and historical characters, both well-known and long forgotten. However the author warns that one should not treat these texts only as a source of factual information, but a work of a writer's imagination.  'Love of History' is an invitation to a talk. To ignite a dispute (as, for example, his argument on the concept of love in the times of old Muscovite). The reader can easily relate to his topics as his vision of the historical events is of a modern XXI century person.  Book is abundantly illustrated with more than 200 magnificent images and is printed in Italy on high quality coated paper.",
    :rudescription => "Одна из самых безусловных истин гласит: кто не знает истории, тот не понимает современности. 'Любите историю, и современность вас полюбит', - советует нам Автор этой книги, один из лучших писателей нашего времени. 'Самая таинственная тайна и другие сюжеты'' - третья книга знаменитой серии 'Любовь к истории'. Это драгоценная коллекция исторических миниатюр, каждая из которой могла бы стать сюжетом захватывающего романа. Читатели знают Бориса Акунина как блистательного рассказчика и полемиста, автора непревзойденных детективных романов, а грандиозный проект 'История Российского государства', тираж первого тома которого уже купили более 150 000, подтвердил и его репутацию большого историка. Книги серии 'Любовь к истории' - развлекательное и вместе с тем познавательное чтение для любого современного человека. Первые выпуски серии 'Любовь к истории' - 'Самый страшный злодей и другие сюжеты' и 'Настоящая принцесса и другие сюжеты'' - уже купили 200 000 ценителей хорошей литературы! Большинство новелл, вошедших в 'Самую таинственную тайну', действительно посвящены историческим событиям и историческим персонажам, как очень известным, так и совсем забытым. Но Автор советует не относиться к этим текстам как к источнику фактической информации: они не столько про саму историю, сколько про любовь к ней, то есть про мысли и чувства, которые вызывают сегодня сюжеты из прошлого. Борис Акунин много пишет и про современность, но в книгу попали только самые знаменитые и обсуждаемые посты. Исторические миниатюры проекта 'Любовь к истории' являются для читателей приглашением к разговору, а иногда даже намеренно провоцируют их на спор (как, например, самая первая, о том, было ли в старой Московии понятие Любви, или это 'продукт' западный). В блоге автора за каждой такой темой следует оживленное и содержательное обсуждение, в котором обычно участвуют сотни людей. Теперь, наконец, любой чтитель тоже имеет редкий шанс почувствовать себя к нему причастным! Книга богато иллюстрирована, содержит более 200 великолепных иллюстраций, отпечатана в Италии на мелованной бумаге.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Bellman & Black",
    :runame => "Bellman & Black",
    :price => 7.11,
    :description => "First time in Russian! A haunting Victorian tale of love, loss and the mystery of death from the bestselling author of THE THIRTEENTH TALE. Bellman & Black is a heart-thumpingly perfect ghost story, beautifully and irresistibly written, its ratcheting tension exquisitely calibrated line by line. Its hero is William Bellman, who, as a boy of 11, killed a shiny black rook with a catapult, and who grew up to be someone, his neighbours think, who 'could go to the good or the bad.' And indeed, although William Bellman's life at first seems blessed—he has a happy marriage to a beautiful woman, becomes father to a brood of bright, strong children, and thrives in business—one by one, people around him die. And at each funeral, he is startled to see a strange man in black, smiling at him. At first, the dead are distant relatives, but eventually his own children die, and then his wife, leaving behind only one child, his favourite, Dora. Unhinged by grief, William gets drunk and stumbles to his wife's fresh grave—and who should be there waiting, but the smiling stranger in black. The stranger has a proposition for William—a mysterious business called 'Bellman & Black'.",
    :rudescription => "Впервые на русском - долгожданный новый роман Дианы Сеттерфилд, прославленного автора ТРИНАДЦАТОЙ СКАЗКИ, признанного шедевра современной английской прозы, который заставил критиков заговорить о возвращении золотого века британского романа, овеянного именами Шарлотты и Эмили Бронте и Дафны Дю Морье. В детстве Уильям Беллмен убивает из рогатки грача; невозможный, через все поле, выстрел тем не менее попадает в цель. Поступок этот вскоре забывается, но имеет непредсказуемые и трагические последствия через много лет, когда Уильям уже вырос, стал уважаемым человеком, счастливо женатым, с четырьмя детьми. Ведь грачи не забывают ничего… И вот ночью, на кладбище, Уильям заключает невероятную сделку с незнакомцем в черном, таинственным образом вошедшим в его жизнь; сделку, которая навсегда изменит судьбу Уильяма. Долгожданный роман от автора мирового бестселлера ТРИНАДЦАТАЯ СКАЗКА!",
    :shipping_category => default_shipping_category
  },
#new
  {
    :name => "The sequel to 'Angels do not Survive on Ice'",
    :runame => "Ангелы на льду не выживают. Том 2",
    :price => 10.95,
    :description => "The publishing house 'Eksmo' releases  a new book by Aleksandra  Marinina 'Angels do not Survive on Ice' - a novel about the cynical, brutal reality in the world of professional sports",
    :rudescription => "Прыжок. Еще прыжок. Холодная сталь коньков молнией рассекает голубой лед… Фигурное катание - красивый и изящный спорт. Миллионы людей с замиранием сердца внимают выступлениям наших фигуристов. И вот, в этот сказочный мир мрачной тенью врывается жестокое убийство. Застрелен Михаил Валентинович Болтенков - тренер высшей категории, человек-легенда, мастер, взрастивший не одного чемпиона. Тело обнаружено у дома его коллеги Валерия Ламзина. Свидетели подтверждают: тренеры встречались перед убийством, они ругались и угрожали друг другу… Дело, как говорится, «в шляпе». Но у Насти Каменской и ее друзей с Петровки - Антона Сташиса и Романа Дзюбы - свое мнение на этот счет. Им открывается правда о бесчеловечностях и цинизме, пропитавших голубой лед. Лед, на котором ангелы не выживают…",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Light Worlds",
    :runame => "Легкие миры",
    :price => 7.43,
    :description => "The book by Tatyana Tolstaya LIGHT WORLDS includes new novels, short stories and essays written in recent years.  The title of the book and the novel  received  the prestigious Ivan Petrovich Belkin’s Award (2013). The reader is taken on an exciting journey to New York and Crete, Moscow and St. Petersburg ... Tatyana Tolstaya recounts the events of her childhood and talks about her family wonderfully illustrating the features of Russian national character by vivid scenes of life and distinctive characters, reflects on the magical properties of the Russian language and those secrets of the spell-casting Russian soul",
    :rudescription => "Новая книга Татьяны Толстой. Впервые за 10 лет. В книгу Татьяны Толстой ЛЕГКИЕ МИРЫ вошли новые повести, рассказы и эссе, написанные в последние годы. Повесть, давшая название сборнику, была удостоена Премии Ивана Петровича Белкина (2013). Читатель вместе с автором перемещается между Нью-Йорком и Критом, Москвой и Петербургом... Татьяна Толстая вспоминает детство и рассказывает о замечательной своей семье, иллюстрирует особенности нашего национального характера яркими сценами из жизни и самобытными героями, размышляет о магических свойствах русской речи и о том тайном, колдовском, что незримо присутствует в нашей жизни. ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Green Gambit",
    :runame => "Зеленый гамбит",
    :price => 5.04,
    :description => "There is no peace in Secret Town! And how could one expect it if the first prince of Navi Yarga after being banished in his own country is back from exile and has big plans regarding Secret Town's throne and perhaps, the whole earth. Nothing is out of bounds for him when it comes to war. And unstoppable Yargy is no stranger to using intrigues and treachery to achieve his goal - the absolute power.  But who will be able stand up to him to defend the Secret Town?",
    :rudescription => "Нет покоя в Тайном Городе! Да и откуда ему взяться, если первый князь Нави, вечный изгнанник Ярга вернулся в большую игру и собирается захватить власть над Тайным Городом и всей Землей. И неумолимо движется к своей цели. Заговоры и предательства - вот война Ярги, и на шее королевы Всеславы уже затягивают петлю те, кого она считает верными подданными. Зеленый Дом шатается, и многие начинают следовать принципу: 'Нужно ставить на победителя', имея в виду первого князя. Тень легендарного Ярги нависла над Тайным Городом, но в том продуманном хаосе, который он создает, есть четверо неизвестных - вынырнувшие из небытия обитатели Знающих Выселок. Которых считали мертвыми. Которых считали врагами. Кем они станут теперь?",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Death of the gods 2. Book 3 Ashes of Asgard",
    :runame => "Гибель Богов-2. Книга 3. Пепел Асгарда",
    :price => 5.04,
    :description => "For many centuries the ancient god Odin, the ruler of Asgard has lived a lonely life. All his relatives, Aces and Asins were killed in the battle of Borgildovo. The only survivor, his daughters, Valkyrie Raina was able to reunite with after several long years. However the world has dramatically changed and the Old Gods, straightforward and harsh are no longer fit in the reality. Odin refuses to submit to fate. He conceives an unprecedented plan - to reclaim lives of the dead ones from Death itself.  Odin and Raina set off on a dangerous journey. And the writing on their banners says: 'Let the world perish, but justice will prevail!'",
    :rudescription => "Долгие века древний бог Один, владыка Асгарда, был одинок. Все его сородичи, асы и асиньи, пали в Боргильдовой битве. Лишь множество лет спустя единственная уцелевшая из его дочерей, валькирия Райна, смогла встретиться с ним. Но мир изменился, и в нем нет больше места Старым Богам, прямодушным и суровым. Однако Один отказывается покоряться судьбе. Задумав небывалое - отнять у самой Смерти доставшуюся ей добычу, - он вместе с Райной отправляется в опаснейшее путешествие. И на знаменах его начертано: 'Пусть погибнет мир, но восторжествует справедливость!'",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Stranger (The Labyrinths of Echo, Book 1)",
    :runame => "Мастер ветров и закатов",
    :price => 5.20,
    :description => "First published to wide acclaim in Russia in 1996, the intriguing first Labyrinths of Echo novel introduces readers to protagonist, narrator and pseudonymous author Max Frei. Max, a self-described classic loser, stays up all night and sleeps during the day. His erratic sleeping habits turn out to be a blessing when a dream brings him to Echo, an otherworldly city inhabited by magicians, where he is named the Nocturnal Representative of the Most Venerable Head of the Minor Secret Investigative Force. After training to shed his terrestrial habits, Max's investigative intuition quickly makes him one of the city's most revered—and feared—men, and soon he's taking on midget murderers and rescuing bewitched sea captains",
    :rudescription => "Самый популярный автор начала ХХI века Макс Фрай дарит своим поклонникам новую серию книг! Таким образом, МАСТЕР ВЕТРОВ И ЗАКАТОВ - первая книга новой серии Макса Фрая 'Сновидения ЕХО', которая раскроет ранее неизвестные стороны жизни сэра Макса из Тайного Сыска города Ехо. Сэр Макс, сидя в башне на крыше Мохнатого Дома, затягивает читателей в новый круговорот приключений и загадок, магии и колдовства. 'Создав новую Вселенную, я немного заскучал', - отличная, по-моему, первая фраза, - пишет Фрай. - Попадись мне в своё время книга, которая так начинается, я бы вцепился в неё мёртвой хваткой и прочитал от корки до корки - просто из любопытства'. Можно не сомневаться, что поклонники Вселенной, созданной писателем, отреагируют на появление новой книги точно так же. Тем более в новой повести восхитительный сэр Макс твердо намерен вернуться от всех своих удивительных ипостасей к личине сотрудника Тайного Сыска города Ехо. Чем увенчаются намерения Макса? Об этом и предстоит узнать читателям! ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Wanderer and his country",
    :runame => "Странник и его страна",
    :price => 6.22,
    :description => "Michael Weller has a unique ability to write in an exciting and fun way about the most profound things. Perhaps, this is the secret why all his books become bestsellers",
    :rudescription => "В Советском Союзе тоже были бродяги и авантюристы - то была эпоха романтики и великих поступков. Лирический герой этой головокружительной цепи похождений и приключений попадает из одной экзотической ситуации в другую - профессиональный охотник в тундре, лесоруб в тайге, студент в Ленинграде и бомж в Средней Азии. Здесь скотогоны крадут гусей, на крыше Казанского собора пьют портвейн, советские граждане охотятся за дефицитом и издеваются над вождями; здесь строители Великой Империи любят, верят и жульничают, а золотая брежневская эпоха яснеет в дымке как прекрасный и ностальгический плутовской роман. Это необычная книга: беллетристика юмористическая, приключенческая, историческая и познавательная. ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Adultery: A novel",
    :runame => "Адъюлтер",
    :price => 6.68,
    :description => "In the latest novel from #1 best-selling author Paulo Coelho, a woman attempts to overcome midlife ennui by rediscovering herself in a passionate relationship with a man who had been a friend in her youth. A woman in her thirties begins to question the routine and predictability of her days. In everybody's eyes, she has a perfect life: happy marriage, children, and a career. Yet what she feels is an enormous apathy. All that changes when she encounters a successful politician who had, years earlier, been her high school boyfriend. As she rediscovers the passion missing from her life, she will face a life-altering choice",
    :rudescription => "Журналистке Линде 31 год, и все считают, что ее благополучию можно лишь позавидовать: она живет в Швейцарии, у нее любящие муж и дети, достойная работа. Однако Линда ощущает, что с каждым днем все глубже погружается в апатию, и больше не может притворяться счастливой. Все меняется, когда она встречает свою школьную любовь. Якоб стал успешным политиком, и во время интервью с ним в Линде вдруг пробуждается то, чего ей так не хватало, - страсть. ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Bridget Jones. Mad About the Boy",
    :runame => "Бриджит Джонс. Без ума от мальчишки",
    :price => 6.68,
    :description => "The new novel will explore a different phase in Bridget's life with an entirely new scenario. As Helen Fielding has said: 'If people laugh as much reading it as I am while writing it then we'll all be very happy.'",
    :rudescription => "Почти десять лет прошло с момента выхода второй книги про Бриджит Джонс. За это время поклонницы суперпопулярного творчества Хелен Филдинг успели изрядно соскучиться по любимой героине. И, вот, Бриджит Джонс снова 'отжигает' в зоне внимания многотысячной армии читательниц. Теперь ей пятьдесят один год, но она прикидывается тридцатипятилетней, чтобы удержать своего 'мальчишку' - бойфренда тридцати лет. Для начала Бриджит решает избавиться от лишних двадцати пяти килограммов. И ей это почти удается. Если кто-то решил, что пышка Бриджит, повзрослев, обрела спокойствие и живет в душевном комфорте, он глубоко ошибается. Все только начинается! Первые два романа о Бриджит Джонс подняли волну подражаний во всем мире. Десятки писательниц принялись на свой лад строчить 'бриджонсовые' дневники. Но первой все-таки была Хелен Филдинг. Поэтому выход новой книги о Бриджит Джонс - большое событие в литературном мире.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Grand",
    :runame => "Гранд",
    :price => 5.89,
    :description => "Unnoticed by anyone, the author sneaks into the rooms of the legendary historic  Hotel “Grand” in Sopot, a place that at times accommodated Hitler, de Gaulle, Marlene Dietrich, Shakira and Putin. He exposes their intimate lives, falls asleep and wakes up in their beds. He unveils their dreams, failures, longings, desires and sufferings. Here loneliness lurks behind every door, but the hotel 'Grand' will give a chance to change their destiny. Who of them will take it?",
    :rudescription => "ГРАНД - новый пронзительный роман Януша Вишневского, мастера тонкой, чувствительной прозы. Писатель словно водит нас по номерам исторического отеля в Сопоте, в котором в разное время жили Гитлер, де Голль, Марлен Дитрих, Шакира, Путин, и посвящает в секреты его современных постояльцев. Здесь за каждой дверью скрывается одиночество, но отель 'Гранд' всем даст шанс изменить свою судьбу. Кто сумеет распорядиться им верно? 'Отели соблазняют, провоцируют и подталкивают к тому, чтобы переходить границы дозволенного и совершать ненормальные поступки. Совсем не всегда благородные и порядочные. У людей бывают разнообразные фантазии и желания, которые они никогда бы не позволили осуществить у себя дома или рядом с домом. Из страха, из стыда, из опасения потерять репутацию'. ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Dark Places",
    :runame => "Темные тайны",
    :price => 6.68,
    :description => "First time in Russian! From the phenomenal worldwide sensation - brilliant Gillian Flynn! Libby Day was just seven years old when her evidence put her fifteen-year-old brother behind bars. Since then, she had been drifting. But when she is contacted by a group who are convinced of Ben's innocence, Libby starts to ask questions she never dared to before. Was the voice she heard her brother's? Ben was a misfit in their small town, but was he capable of murder? Are there secrets to uncover at the family farm or is Libby deluding herself because she wants her brother back? She begins to realise that everyone in her family had something to hide that day... especially Ben. Now, twenty-four years later, the truth is going to be even harder to find. Who did massacre the Day family?",
    :rudescription => "От автора детективных триллеров, мгновенно ставших супербестселлерами и с восторгом принятых такими крупными литературными авторитетами, как Стивен Кинг, Вэл Макдермид, Кейт Аткинсон и другие мастера жанра. Двадцать четыре года прошло с тех пор, когда чудовищное преступление потрясло весь Канзас: в маленьком городке пятнадцатилетний подросток зверски убил собственную семью. Тогда чудом уцелела лишь семилетняя Либби, но случившаяся трагедия наложила неизгладимый отпечаток на ее дальнейшую жизнь. Юноша отбывает пожизненное заключение, но он так и не признался в содеянном. Либби, когда-то ставшая главным свидетелем обвинения, после столь долгих лет наконец-то решает встретиться с братом. В прошлое возвращаться страшно, тем более что за его завесой скрываются зловещие тайны… На русском языке роман выходит впервые. ",
    :shipping_category => default_shipping_category
  },
#comming soon
  {
    :name => "Russian Brutal Short Story",
    :runame => "Русский жестокий рассказ",
    :price => 8.16,
    :description => "Russian Brutal Short Story is a literary collection compiled by Vladimir Sorokin. In this book the writer put together the classic stories by Leo Tolstoy, Anton Chekhov et al., together with texts of both, modern renowned writers such as Yuri Mamleyev and Ludmila Petrushevskaya and yet-to-be-discovered by the reader, such as Eugene Kharitonov. The collection Russian Brutal Short Story is composed of 32 works by Russian and Soviet writers. Different in spirit, style and content, they all explore the nature of human cruelty and irrational behaviour, catching the exact moment when thinking gives way to instincts and cultural codes matter no longer.",
    :rudescription => "Русский жестокий рассказ — сборник, составленный Владимиром Сорокиным.  Писатель объединил в этой книге «программные» рассказы (Льва Толстого или Антона Чехова) как с текстами современных известных писателей (Юрия Мамлеева и Людмилы Петрушевской), так и с редкими и забытыми (Евгения Харитонова). В сборник короткой прозы «Русский жестокий рассказ», составленный Владимиром Сорокиным, вошли 32 произведения русских и советских писателей. Различные по духу, стилю и содержанию,  все они исследуют феномен человеческой жестокости: авторы приоткрывают дверь в пространство иррационального, фиксируя момент, когда разум уступает место  инстинкту и культурные коды  теряют значение.",
    :shipping_category => default_shipping_category
  },
  {
    :name => "The Phantom of the Heavenly Jerusalem",
    :runame => "Призрак Небесного Иерусалима",
    :price => 2.76,
    :description => "A terrific debut novel of 2014! Darya Dezombre bursts onto the literary scene with her action-packed 'The Phantom of the Heavenly Jerusalem'!First truly intellectual 'whodunit' from Darya Dezombre, whose writing is influenced by renowned Dan Brown. 'The Phantom of the Heavenly Jerusalem' is a  compelling read. The fast-paced thriller deals with mystery killings in these days Moscow.  Each body has a number written over it. The motives are unclear. The investigation is entrusted to a seasoned sleuth and his talented female apprentice. The team starts solving the puzzle that will take them on the remarkable journey to  ancient Moscow in the search of clues.",
    :rudescription => "Самый громкий дебют 2014 года Первый интеллектуальный детективный роман Дарьи Дезомбре написан в лучших традициях Дэна Брауна! «Призрак Небесного Иерусалима» — книга для любителей экстремального, захватывающего чтения. Сюжет романа связывает в один криминальный узел современность и давно минувшие века. Современную Москву лихорадит от серии зверских убийств. Похоже, в столице завелся новый маньяк, действия которого объяснить невозможно. Каждый труп пронумерован. Какой-то изверг решил поиграть в кровавую нумерологию? Нет, все гораздо серьезнее. Мотивы преступлений спрятаны так глубоко, что откопать их не под силу даже самому матерому следователю. Конечно! Как можно разобраться в этой криминальной путанице, если ее корни уходят в далекое Средневековье? Однако за дело берутся бывалый сыскарь и стажерка-отличница с юридического факультета, краснеющая от любого резкого взгляда, брошенного на нее, и к тому же просто-таки помешанная на маньяках. Следователь сразу невзлюбил свою неопытную и дотошную ассистентку. Но делать нечего: стажерку ему навязало высокое руководство... Только этой паре под силу расшифровать ребус, составленный убийцей и уходящий своими корнями в древнюю Москву, в старые раскольничьи тексты, в Древние Писания. ",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Mr. Mercedes",
    :runame => "Мистер Мерседес",
    :price => 8.16,
    :description => "In a mega-stakes, high-suspense race against time, three of the most unlikely and winning heroes Stephen King has ever created try to stop a lone killer from blowing up thousands. In the frigid pre-dawn hours, in a distressed Midwestern city, hundreds of desperate unemployed folks are lined up for a spot at a job fair. Without warning, a lone driver plows through the crowd in a stolen Mercedes, running over the innocent, backing up, and charging again. Eight people are killed; fifteen are wounded. The killer escapes. In another part of town, months later, a retired cop named Bill Hodges is still haunted by the unsolved crime. When he gets a crazed letter from someone who self-identifies as the perp; and threatens an even more diabolical attack, Hodges wakes up from his depressed and vacant retirement, hell-bent on preventing another tragedy. Brady Hartfield lives with his alcoholic mother in the house where he was born. He loved the feel of death under the wheels of the Mercedes, and he wants that rush again. Only Bill Hodges, with a couple of highly unlikely allies, can apprehend the killer before he strikes again. And they have no time to lose, because Brady's next mission, if it succeeds, will kill or maim thousands. Mr. Mercedes is a war between good and evil, from the master of suspense whose insight into the mind of this obsessed, insane killer is chilling and unforgettable.",
    :rudescription => "Стивен Кинг написал триллер, который заставит вас в ужасе оглядываться на каждый проезжающий мимо «Мерседес» и совершенно по-другому смотреть на людей, с которыми вы сталкиваетесь каждый день. Кто знает, какие жуткие тайны скрываются за соседней дверью и кто именно хочет свести счеты именно с вами?.. Восемь убитых и пятнадцать раненых на счету бесследно исчезнувшего убийцы, протаранившего на «Мерседесе» ни в чем не повинных людей… Стивен Кинг написал триллер, который заставит вас в ужасе оглядываться на каждый проезжающий мимо «Мерседес» и совершенно по-другому смотреть на людей, с которыми вы сталкиваетесь каждый день. Кто знает, какие жуткие тайны скрываются за соседней дверью и кто именно хочет свести счеты именно с вами?..",
    :shipping_category => default_shipping_category
  },
  {
    :name => "And life was very good",
    :runame => "А жизнь была совсем хорошая",
    :price => 4.15,
    :description => "The new book by Mariya Metlitskaya consists of five thrilling stories. Accessible language, gripping narrative, charismatic characters - it has all the ingredients that make it a truly special unputdownable read!  The main story burrowing deep into the murky corners of the human psyche tells us about a family who have already had a taste of all things a marriage brings to our lives  - joy and happiness, disappointment and sorrow. Nevertheless, Ivan and Olga, an ordinary couple don't question staying together. Form their point of view the recipe for life in no rocket science: just live and work as decent people do and one day happiness will sure come along. And respect from the others. But things don't exactly go that way when the Olga and Ivan face a complete rejection of their values from their own daughters. Who is to blame? And what they are supposed to do? Ivan seems to have a solution.",
    :rudescription => "В новой книге Марии Метлицкой — пять захватывающих историй. Очень легкий, естественный язык повествования, харизматичные персонажи, «затягивающие» сюжеты доставят удовольствие любому читателю. Книга отлично подходит и тем, кто хочет отдохнуть, и тем, кто хочет узнать что-то новое о жизни и любви. Заглавная повесть книги рассказывает о семье, вкусившей и счастье, и разочарование, и горе. Иван и Ольга, люди простые и честные, были уверены, что все ясно: живи, работай, и будет тебе счастье и уважение. Но не суждено было Ивану и Ольге наслаждаться этой простой и честной жизнью, потому что такая жизнь оказалась не по нраву их дочерям. Иван не мог понять, где ошибся, в какой момент сделал что-то не так: недоглядел, когда его девочки пошли по кривой дороге. Во всем, что случилось, он винил только себя. Что ж, кто виноват, тому и исправлять ошибки. И Иван принял решение...",
    :shipping_category => default_shipping_category
  },
  {
    :name => "Dance of the Happy Shades",
    :runame => "Танец блаженных теней",
    :price => 5.64,
    :description => "Munro has been appreciated for her finely tuned storytelling, characterized by clarity and psychological realism for more than 30 years. She is dubbed an unmatched master of the contemporary short story.  And finally her compelling, provocative prose has been presented to the Russian reader.  'The Canadian Chekhov', Munro bust into literature scene with her debut collection, first published in 1968, Dance of the Happy Shades. Dance of the Happy Shades is the forth collection translated into Russian to date.",
    :rudescription => "Нобелевская премия по литературе 2013 года. Премия «Всемирной организации писателей» PEN 1997 года. · Букеровская премия 2009 года. · Книги Элис Манро переведены на 21 язык. Вот уже тридцать лет Элис Манро называют лучшим в мире автором коротких рассказов, но к российскому читателю ее книги приходят только теперь, после того, как писательница получила Нобелевскую премию по литературе. Критика постоянно сравнивает Манро с Чеховым, и это сравнение не лишено оснований: подобно русскому писателю, она умеет рассказать историю так, что читатели, даже принадлежащие к совсем другой культуре, узнают в героях самих себя. Ведь уже в своем дебютном сборнике, «Танец блаженных теней», Манро как по волшебству демонстрировала ординарные жизни в неординарном ракурсе, словно лучом прожектора выхватывая те яркие моменты, когда откровение возникает из-под слоев самого обыденного опыта…",
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