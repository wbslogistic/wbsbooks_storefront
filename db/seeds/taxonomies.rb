# encoding: UTF-8
taxonomies = [
  { 
  	:name => "Categories",
  	:runame => "Категории"
  },
  { 
  	:name => "Specials",
  	:runame => "Акции"
  },
  { 
  	:name => "Publishers",
		:runame => "Издательства"
  },
  { 
  	:name => "Authors",
  	:runame => "Авторы"
  },
  { 
  	:name => "Suggested Titles",
  	:runame => "Рекомендованные товары"

  },
  { 
  	:name => "Whats new",
  	:runame => "Новинки"
 	},
  { 
    :name => "Bestsellers",
    :runame => "Лучшая цена"
  },
  { 
    :name => "New",
    :runame => "Новинки"
  },
  { 
    :name => "Comming",
    :runame => "Скоро поступление"
  }
]

taxonomies.each do |attrs|
	attrs_en = Hash[*attrs.to_a.at(0)]
	attrs_ru = Hash[*attrs.to_a.at(1)]
  Spree::Taxonomy.create!(attrs_en)
  item = Spree::Taxonomy.find_by(:name => attrs_en[:name])
  Spree::Taxonomy::Translation.create!(:spree_taxonomy_id => item.id, :locale => "ru", :name => "#{attrs_ru[:runame]}")
end

puts "SAMPLE DATA -> Created taxonomies"



