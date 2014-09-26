module Spree
  module Core
    module Search
      class AdvancedSearch
        attr_accessor :properties
        attr_accessor :current_user
        attr_accessor :current_currency

        def initialize(params)
          self.current_currency = Spree::Config[:currency]
          @properties           = {}
          prepare(params)
        end

        def retrieve_products
          @products = get_base_scope
          curr_page = page || 1

          unless Spree::Config.show_products_without_price
            @products = @products.where("spree_prices.amount IS NOT NULL").where("spree_prices.currency" => current_currency)
          end
          @products = @products.page(curr_page).per(per_page)
        end

        def method_missing(name)
          if @properties.has_key? name
            @properties[name]
          else
            super
          end
        end

        protected
        def get_base_scope
          base_scope = Spree::Product.active
          if taxon.present? || author.present? || publisher.present?
            base_scope = base_scope.joins(:taxons)
          end

          taxons = []
          taxons << author if author
          taxons << publisher if publisher
          id = Spree::Product.arel_table[:id]
          base_scope = base_scope.where(spree_taxons: {id: taxons.map { |t| t.self_and_descendants.pluck(:id) }.flatten.uniq}).group(id).having(id.count.eq(taxons.size))

          base_scope = base_scope.in_taxon(taxon) unless taxon.blank?
          base_scope = get_products_conditions_for(base_scope, keywords)
          base_scope = add_search_scopes(base_scope)
          base_scope = add_eagerload_scopes(base_scope)
          base_scope
        end

        def add_eagerload_scopes scope
          if include_images
            scope.eager_load({master: [:prices, :images]})
          else
            scope.includes(master: :prices)
          end
        end

        def add_search_scopes(base_scope)
          search.each do |name, scope_attribute|
            scope_name = name.to_sym
            if base_scope.respond_to?(:search_scopes) && base_scope.search_scopes.include?(scope_name.to_sym)
              base_scope = base_scope.send(scope_name, *scope_attribute)
            else
              base_scope = base_scope.merge(Spree::Product.ransack({scope_name => scope_attribute}).result)
            end
          end if search
          base_scope
        end

        # method should return new scope based on base_scope
        def get_products_conditions_for(base_scope, query)
          unless query.blank?
            base_scope = base_scope.like_any([:name, :description], query.split)
          end
          base_scope
        end

        def prepare(params)
          @properties[:taxon]     = params[:taxon].blank? ? nil : Spree::Taxon.find(params[:taxon])
          @properties[:author]    = params[:author].blank? ? nil : Spree::Taxon.find(params[:author])
          @properties[:publisher] = params[:publisher].blank? ? nil : Spree::Taxon.find(params[:publisher])

          @properties[:keywords]       = params[:keywords]
          @properties[:search]         = params[:search]
          @properties[:include_images] = params[:include_images]

          per_page               = params[:per_page].to_i
          @properties[:per_page] = per_page > 0 ? per_page : Spree::Config[:products_per_page]
          @properties[:page]     = (params[:page].to_i <= 0) ? 1 : params[:page].to_i
        end
      end
    end
  end
end

Spree::Config.searcher_class = Spree::Core::Search::AdvancedSearch