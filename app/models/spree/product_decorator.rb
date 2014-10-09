Spree::Product.class_eval do
  def self.search(name, isbn, author, publisher, sort_column, sort_dir)   
   locale = I18n.locale.to_s
    Rails.logger.info("!!!locale #{locale}")
    if (!isbn.blank?)
      joins("JOIN spree_variants v on v.product_id = spree_products.id").
      where("v.is_master = ? and v.sku = ?", true, isbn)
    else
      if (!author.blank? or publisher.blank?)
        taxon_type = "authors/%"
        taxon_name = "%#{author.downcase}%"
      else
        taxon_type = "publishers/%"
        taxon_name = "%#{publisher.downcase}%"
      end      
      if (locale == "en")
        joins("JOIN spree_variants v on v.product_id = spree_products.id
          LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
          LEFT JOIN spree_taxons t on t.id = pt.taxon_id").
        where("v.is_master = ? and v.sku like ?
          and lower(spree_products.name) like ? 
          and t.permalink like ? and lower(t.name) like ?",
          true, "%#{isbn}%",
          "%#{name.downcase}%", 
          taxon_type, taxon_name).
        order(sort_column + " " + sort_dir)           
      elsif (locale == "ru")
        joins("JOIN spree_variants v on v.product_id = spree_products.id
          LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
          LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
          INNER JOIN spree_product_translations p_tr on p_tr.spree_product_id = spree_products.id
          INNER JOIN spree_taxon_translations t_tr on t_tr.spree_taxon_id = t.id").
        where("v.is_master = ? and v.sku like ?
          and p_tr.locale = ? and lower(p_tr.name) like ? 
          and t_tr.locale = ? and t.permalink like ? and lower(t_tr.name) like ?",
          true, "%#{isbn}%",
          "ru", "%#{name.downcase}%", 
          "ru", taxon_type, taxon_name).
        order(sort_column + " " + sort_dir)              
      end
    end
  end

  def isbn
  	# product_properties.first.value
    master.sku
  end

  def authors
  	a = taxons.where("permalink like ?", "authors/%").order("name").map {|e| e.name}
    a.join(", ")
  end

  def publishers
  	p = taxons.where("permalink like ?", "publishers/%").order("name").map {|e| e.name}
    p.join(", ")
  end

  def qty
    master.stock_items.first.count_on_hand
  end
end