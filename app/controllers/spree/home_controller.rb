module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html
    layout "no_catalog", only: [:about, :contact, :faq]

    def index
      @searcher = build_searcher(params)
      # @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end

    def about
    end

    def contact
    end

    def faq
    end

  end
end
