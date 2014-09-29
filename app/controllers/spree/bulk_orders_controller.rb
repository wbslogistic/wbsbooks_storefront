module Spree
  class BulkOrdersController < Spree::ProductsController
  	layout "bulk_order_layout"
     def index
     	if (!params[:title].blank? or !params[:isbn].blank? or !params[:author].blank? or !params[:publisher].blank?)
     		@products = Product.search(params[:title],params[:isbn],params[:author], params[:publisher], I18n.locale.to_s)
      else
        @products = Product.all
        # @products = [Product.first, Product.second]
     	end
		# @taxon = Spree::Taxon.find_by_name('Specials') if 'Specials'.present?
		# @searcher = build_searcher(params.merge(:taxon => @taxon.id))
		# @products = @searcher.retrieve_products
		# @taxonomies = Spree::Taxonomy.includes(root: :children)
    # @product = Product.first
	end
  end
end