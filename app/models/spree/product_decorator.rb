Spree::Product.class_eval do
  def self.search(name,isbn,author,publisher,locale)   
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
    # Rails.logger.info("!!!locale #{locale}")
    if (!isbn.blank?)
      joins("JOIN spree_variants v on v.product_id = spree_products.id").
      where("v.is_master = ? and v.sku = ?", true, isbn)
    else
      if (locale == "en")
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
      else
        if (locale == "ru")
          if (!author.blank? or publisher.blank?)
            joins("LEFT JOIN spree_products_taxons pt on 
              pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
              INNER JOIN spree_product_translations p_tr
              on p_tr.spree_product_id = spree_products.id
              INNER JOIN spree_taxon_translations t_tr
              on t_tr.spree_taxon_id = t.id").
            where("p_tr.locale = ? and lower(p_tr.name) like ? 
              and t.permalink like ? and t_tr.locale = ?
              and lower(t_tr.name) like ?",
              "ru", "%#{name.downcase}%", "authors/%", "ru","%#{author.downcase}%")              
          else
            joins("LEFT JOIN spree_products_taxons pt on 
              pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
              INNER JOIN spree_product_translations p_tr
              on p_tr.spree_product_id = spree_products.id
              INNER JOIN spree_taxon_translations t_tr
              on t_tr.spree_taxon_id = t.id").
            where("p_tr.locale = ? and lower(p_tr.name) like ? 
              and t.permalink like ? and t_tr.locale = ?
              and lower(t_tr.name) like ?",
              "ru", "%#{name.downcase}%", "publishers/%", "ru","%#{publisher.downcase}%")  
          end      
        end
      end
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