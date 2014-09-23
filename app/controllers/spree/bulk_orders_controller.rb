module Spree
  class BulkOrdersController < Spree::ProductsController
  	layout "bulk_order_layout"
     def index
     	if (params[:title] and !params[:title].blank?)
     		@products = Product.all
     	end
		# @taxon = Spree::Taxon.find_by_name('Specials') if 'Specials'.present?
		# @searcher = build_searcher(params.merge(:taxon => @taxon.id))
		# @products = @searcher.retrieve_products
		# @taxonomies = Spree::Taxonomy.includes(root: :children)
	end
  end
end