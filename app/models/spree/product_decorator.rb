Spree::Product.class_eval do
  def self.search(name,isbn,author,publisher)   
    # joins("JOIN spree_product_properties pp on pp.product_id=spree_products.id 
    # 	JOIN spree_properties p on p.id = pp.property_id 
    # 	JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
    # 	JOIN spree_taxons t on t.id = pt.taxon_id").
    # where("lower(spree_products.name) like ? 
    # 	and p.name = ? 
    # 	and pp.value like ?
    # 	and t.permalink like ?
    # 	and lower(t.name) like ?
    # 	","%#{name.downcase}%","ISBN","%#{isbn}%", "authors/%", "%#{author.downcase}%")
    if (!author.blank? or publisher.blank?)
      joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
        LEFT JOIN spree_taxons t on t.id = pt.taxon_id").
      where("lower(spree_products.name) like ? 
        and t.permalink like ?
        and lower(t.name) like ?
        ","%#{name.downcase}%", "authors/%", "%#{author.downcase}%")              
    else
      joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
        LEFT JOIN spree_taxons t on t.id = pt.taxon_id").
      where("lower(spree_products.name) like ? 
        and t.permalink like ?
        and lower(t.name) like ?
        ","%#{name.downcase}%", "publishers/%", "%#{publisher.downcase}%") 
    end
  end

  def isbn
  	# product_properties.first.value
    master.sku
  end

  def authors
  	a = taxons.where("permalink like ?", "authors/%").map {|e| e.name}
    a.join(", ")
  end

  def publishers
  	p = taxons.where("permalink like ?", "publishers/%").map {|e| e.name}
    p.join(", ")
  end

  def price
    master.cost_price
  end

  def qty
    master.stock_items.first.count_on_hand
  end
end