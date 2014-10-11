module Spree
  class PartnersController < Spree::StoreController

    def index
		@taxon = Spree::Taxon.find_by_name('Partners')
		@partners = @taxon.children
		@taxonomies = Spree::Taxonomy.includes(root: :children)
	end

	def show
		@partner = Spree::Taxon.find(params[:id]) 
		@taxonomies = Spree::Taxonomy.includes(root: :children)		
	end

  end
end