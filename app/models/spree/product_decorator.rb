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
      joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
        LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
        INNER JOIN spree_product_translations p_tr on p_tr.spree_product_id = spree_products.id
        INNER JOIN spree_taxon_translations t_tr on t_tr.spree_taxon_id = t.id
        JOIN spree_variants v on spree_products.id = v.product_id
        JOIN spree_prices pr on v.id = pr.variant_id
        JOIN spree_stock_items s on v.id = s.variant_id").
      where("v.is_master = ? and v.sku like ?
        and p_tr.locale = ? and lower(p_tr.name) like ? 
        and t_tr.locale = ? and t.permalink like ? and lower(t_tr.name) like ?",
        true, "%#{isbn}%",
        locale, "%#{name.downcase}%", 
        locale, taxon_type, taxon_name).
      order(sort_column + " " + sort_dir)      
    end
  end

  def isbn
    master.sku.split('_site').first
  end

  def authors
  	a = taxons.where("spree_taxons.permalink LIKE ?", "authors/%").order("spree_taxons.name").distinct.pluck(:name)
    a.join(", ")
  end

  def publishers
  	 publisher_name_list.join(", ")
  end

  def publisher_name_list
    taxons.where("spree_taxons.permalink LIKE ?", "publishers/%").order("spree_taxons.name").distinct.pluck(:name)
  end

  def qty
    master.stock_items.first.count_on_hand
  end


  def rrp
    factor = 1.8
    dynamic_factor = 0.85
    publisher_name_list.each do |publisher_name|
        case publisher_name
          when "Эксмо".force_encoding("UTF-8"),"Eksmo",'eksmo'
            dynamic_factor = Spree::Config.eksmo_rrt ? Spree::Config.eksmo_rrt : 0.7
            break
          when "Azbuka","Азбука".force_encoding("UTF-8")
            dynamic_factor = Spree::Config.azbuka_rrt ? Spree::Config.azbuka_rrt : 0.72
            break
          when "SZKO","szko","Szko","СЗКО".force_encoding("UTF-8")
            dynamic_factor = Spree::Config.szko_rrt ? Spree::Config.szko_rrt : 0.76
            break
          when "Piter","питер".force_encoding("UTF-8"),"Питер".force_encoding("UTF-8")
            dynamic_factor = Spree::Config.piter_rrt ? Spree::Config.piter_rrt : 0.85
            break
          else
            dynamic_factor = Spree::Config.default_rrt ? Spree::Config.default_rrt : 0.85
        end
    end

    rrp_price =  price * factor * dynamic_factor

    Spree::Money.new(rrp_price, { currency: currency })
  end

end