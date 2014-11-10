module Spree
	class NewItemsController < Spree::ProductsController

		def index
			@taxon = Spree::Taxon.find_by_name('Whats new') if 'Whats new'.present?
			if @taxon
				@searcher = build_searcher(params.merge(:taxon => @taxon.id))
				@products = @searcher.retrieve_products
				@taxonomies = Spree::Taxonomy.includes(root: :children)
			end
		end
	end
end