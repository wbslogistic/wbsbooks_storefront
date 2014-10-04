module Spree
  class BulkOrdersController < Spree::ProductsController
  	layout "bulk_order_layout"
    def index
      if (!params[:title].blank? or !params[:isbn].blank? or !params[:author].blank? or !params[:publisher].blank?)
        @products = Product.search(params[:title],params[:isbn],params[:author], params[:publisher], I18n.locale.to_s).page(params[:page]).per(10)
      else
        if I18n.locale.to_s == "en"
          if params[:sort]== "isbn"
            @products = Product.joins("JOIN spree_variants v on v.product_id = spree_products.id").where("v.is_master = ?","t").order('v.sku '+params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "title"
            @products = Product.order("name " + params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "author"
            @products = Product.joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id").
            where("t.permalink like ?", "authors/%").order('t.name '+params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "publisher"
            @products = Product.joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id").
            where("t.permalink like ?", "publishers/%").order('t.name '+params[:dir]).page(params[:page]).per(10)
          else
            @products = Product.all.page(params[:page]).per(10)
          end
        elsif I18n.locale.to_s == "ru"
          if params[:sort]== "isbn"
            @products = Product.joins("JOIN spree_variants v on v.product_id = spree_products.id").where("v.is_master = ?","t").order('v.sku '+params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "title"
            @products = Product.joins("INNER JOIN spree_product_translations p_tr 
              on p_tr.spree_product_id = spree_products.id").where("p_tr.locale =?", "ru").
            order("p_tr.name " + params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "author"
            @products = Product.joins("LEFT JOIN spree_products_taxons pt on 
              pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
              INNER JOIN spree_taxon_translations t_tr
              on t_tr.spree_taxon_id = t.id").
            where("t.permalink like ? and t_tr.locale = ?",
              "authors/%", "ru").order('t_tr.name '+params[:dir]).page(params[:page]).per(10)
          elsif params[:sort] == "publisher"
            @products = Product.joins("LEFT JOIN spree_products_taxons pt on 
              pt.product_id = spree_products.id 
              LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
              INNER JOIN spree_taxon_translations t_tr
              on t_tr.spree_taxon_id = t.id").
            where("t.permalink like ? and t_tr.locale = ?",
              "publishers/%", "ru").order('t_tr.name '+params[:dir]).page(params[:page]).per(10)
          else
            @products = Product.all.page(params[:page]).per(10)
          end
        end          
      end
  end    
  end
end