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

          order_rules = {
              price_asc:  Spree::Product.ascend_by_master_price.values[:order],
              price_desc: Spree::Product.descend_by_master_price.values[:order],
              name_asc:   Spree::Product.ascend_by_name.values[:order],
              name_desc:  Spree::Product.descend_by_name.values[:order]
          }

          base_scope = Spree::Product.active
          if taxon.present? || author.present? || publisher.present?
            base_scope = base_scope.joins(:taxons)
          end

          taxons = []
          taxons << author if author
          taxons << publisher if publisher

          if taxons.any?
            id         = Spree::Product.arel_table[:id]
            base_scope = base_scope.where(spree_taxons: { id: taxons.map { |t| t.self_and_descendants.pluck(:id) }.flatten.uniq }).group(id).having(id.count.eq(taxons.size))
          end

          if min_price || max_price
            base_scope = base_scope.price_between((min_price || 0), (max_price || 999999))
          end

          if date_from || date_to
            base_scope = base_scope.where(
              "created_at >= :date_from AND created_at <= :date_to",
              date_from: (date_from || DateTime.new(1)),
              date_to: (date_to || DateTime.new(9999))
            )
          end

          base_scope = base_scope.in_taxon(taxon) unless taxon.blank?
          base_scope = get_products_conditions_for(base_scope, keywords)
          base_scope = add_search_scopes(base_scope)
          base_scope = add_eagerload_scopes(base_scope)

          if order_rules[sort]
            base_scope = base_scope.reorder(order_rules[sort])
          end
          base_scope
        end

        def add_eagerload_scopes scope
          if include_images
            scope.eager_load({ master: [:prices, :images] })
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
              base_scope = base_scope.merge(Spree::Product.ransack({ scope_name => scope_attribute }).result)
            end
          end if search
          base_scope
        end

        # method should return new scope based on base_scope
        def get_products_conditions_for(base_scope, query)
          unless query.blank?
            fields     = [:name, :description]
            values     = query.split
            base_scope = base_scope.joins(:translations)
            base_scope = base_scope.where fields.map { |field|
                                            values.map { |value|
                                              base_scope.arel_table[field].matches("%#{value}%").or(
                                                  Spree::Product::Translation.arel_table[field].matches("%#{value}%")
                                              )
                                            }.inject(:or)
                                          }.inject(:or)
          end
          base_scope
        end

        def prepare(params)
          @properties[:taxon]     = params[:taxon].blank? ? nil : Spree::Taxon.find(params[:taxon])
          @properties[:author]    = params[:author].blank? ? nil : Spree::Taxon.find(params[:author])
          @properties[:publisher] = params[:publisher].blank? ? nil : Spree::Taxon.find(params[:publisher])

          @properties[:min_price] = params[:min_price].blank? ? nil : params[:min_price].to_f
          @properties[:max_price] = params[:max_price].blank? ? nil : params[:max_price].to_f

          @properties[:date_from] = begin
            Date.parse(params[:date_from])
          rescue
            nil
          end

          @properties[:date_to] = begin
            Date.parse(params[:date_to])
          rescue
            nil
          end
          @properties[:keywords]       = params[:keywords]
          @properties[:search]         = params[:search]
          @properties[:include_images] = params[:include_images]

          per_page               = params[:per_page].to_i
          @properties[:per_page] = per_page > 0 ? per_page : Spree::Config[:products_per_page]
          @properties[:page]     = (params[:page].to_i <= 0) ? 1 : params[:page].to_i

          @properties[:sort] = (params[:sort] || "name_asc").to_sym
        end
      end
    end
  end
end

Spree::Config.searcher_class = Spree::Core::Search::AdvancedSearch