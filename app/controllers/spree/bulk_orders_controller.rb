module Spree
  class BulkOrdersController < Spree::ProductsController
    helper_method :sort_column, :sort_dir
  	layout "bulk_order_layout"
    def index

      if (Spree::BaseHelper.one_is_not_blank? params[:title],params[:isbn],params[:author],params[:publisher],params[:sugested])
        @products = Product.search(params[:title],params[:isbn],params[:author], 
          params[:publisher], sort_column, sort_dir,params[:sugested]).
        page(params[:page]).per(10)
      else
        locale = I18n.locale.to_s
        @products = Product.joins("LEFT JOIN spree_products_taxons pt on pt.product_id = spree_products.id 
          LEFT JOIN spree_taxons t on t.id = pt.taxon_id 
          INNER JOIN spree_product_translations p_tr on p_tr.spree_product_id = spree_products.id
          INNER JOIN spree_taxon_translations t_tr on t_tr.spree_taxon_id = t.id
          JOIN spree_variants v on spree_products.id = v.product_id
          JOIN spree_prices pr on v.id = pr.variant_id
          JOIN spree_stock_items s on v.id = s.variant_id").
        where("t.permalink like ? and t_tr.locale = ? and p_tr.locale = ?", publisher_or_author_taxon, locale, locale).
        order(sort_column + " " + sort_dir).page(params[:page]).per(10)
      end
    end    

    private
    def sort_column
      if %w[isbn title author publisher stock rrp price weight].include?(params[:sort])
        if params[:sort] == "isbn"
          "v.sku"
        elsif params[:sort] == "title" 
          I18n.locale.to_s == "en" ? "t.name" : "p_tr.name"
        elsif params[:sort] == "author"
          I18n.locale.to_s != "en" ? "t.name" : "t_tr.name"
        elsif params[:sort] == "publisher"
          I18n.locale.to_s == "en" ? "t.name" : "t_tr.name"
        elsif params[:sort] == "stock"
          "s.count_on_hand"   
        elsif params[:sort] == "rrp"
          "pr.amount"                       
        elsif params[:sort] == "price"
          "pr.amount"
        elsif params[:sort] == "weight"
          "v.weight"
        end  
      else
        # sort by title
        "t.name"
      end
    end   

    def publisher_or_author_taxon
      params[:sort] == "publisher" ? "publishers/%" : "authors/%"
    end

    def sort_dir
      %w[asc desc].include?(params[:dir]) ? params[:dir] : "asc"
    end
  end
end