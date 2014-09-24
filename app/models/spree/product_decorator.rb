Spree::Product.class_eval do
  def self.search(name,isbn,author,publisher)  
  	# where("name like ?", "%#{name}%")
  	# joins("JOIN spree_product_properties on spree_product_properties.product_id=spree_products.id 
  	# 	JOIN spree_properties on spree_properties.id = spree_product_properties.property_id").
  	# 	where("spree_properties.name = ? 
  	# 		and spree_product_properties.value like ?
  	# 		and spree_products.name like ?","ISBN","%#{isbn}%", "%#{name}%") 
    joins("JOIN spree_product_properties pp on pp.product_id=spree_products.id 
    	JOIN spree_properties p on p.id = pp.property_id 
    	JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
    	JOIN spree_taxons t on t.id = pt.taxon_id").
    where("lower(spree_products.name) like ? 
    	and p.name = ? 
    	and pp.value like ?
    	and t.permalink like ?
    	and lower(t.name) like ?
    	","%#{name.downcase}%","ISBN","%#{isbn}%", "authors/%", "%#{author.downcase}%")

  end

  def isbn
  	product_properties.first.value
  end

  def author
  	taxons.where("permalink like ?", "authors/%").first
  end

  def publisher
  	taxons.where("permalink like ?", "publishers/%").first
  end
end