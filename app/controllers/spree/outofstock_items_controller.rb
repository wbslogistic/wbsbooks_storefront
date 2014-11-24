module Spree
  class OutofstockItemsController < Spree::StoreController
    respond_to :html
    layout "no_catalog"
    skip_before_filter :verify_authenticity_token  
    
    def index
     @taxonomies = Spree::Taxonomy.includes(root: :children)
     @outofstock = OutofstockItem.where(:user_email => spree_current_user.email )
    end
    
    def create
           @present =  OutofstockItem.where(:user_email => spree_current_user.email , :product_id => params[:product_id])
           if @present.count == 0
            @outofstock = OutofstockItem.new(:user_email => spree_current_user.email , :product_id => params[:product_id])
            @outofstock.save
           end
           
           redirect_to   outofstock_items_url
    end
   
   def show
      @outofstock = OutofstockItem.where(:user_email => spree_current_user.email )
   end
   
    def destroy_all
	   
	    @products = OutofstockItem.all
	    @products.destroy_all
	    redirect_to outofstock_items_url
    end
private
  def redirect_to_back_or_root_url
    redirect_to(request.referer.present? ? :back : root_path)
  end
    
  end
end
