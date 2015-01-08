module Spree
  module Admin
      class NItemsController < ResourceController

        def collection
          super.order(:name)
        end

        helper Spree::BaseHelper

       def show
         @news = Spree::NItem.all
         render 'spree/admin/n_items/index'
       end

        def index
          @news =Spree::NItem.all
        end

        def edit
          @new_item = NItem.find(params['id'])
        end
        def new
          @new_item =NItem.new
        end
      end
  end
  end