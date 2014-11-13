module Spree
	class SpecialsController < Spree::ProductsController

		def index
			@taxon = Spree::Taxon.find_by_name('Specials') if 'Specials'.present?

			if @taxon
				@searcher = build_searcher(params.merge(:taxon => @taxon.id))
				@products = @searcher.retrieve_products
				@taxonomies = Spree::Taxonomy.includes(root: :children)
			end
		end
	end
end