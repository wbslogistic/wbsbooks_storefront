module Spree
  class OrdersController < Spree::StoreController
    ssl_required :show

    layout "no_catalog"

    before_filter :check_authorization
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/products', 'spree/orders'

    respond_to :html

    before_filter :assign_order_with_lock, only: :update
    before_filter :apply_coupon_code
    skip_before_filter :verify_authenticity_token

    def show
      @order = Order.find_by_number!(params[:id])
    end

    def update
	 
      if @order.contents.update_cart(order_params)
        respond_with(@order) do |format|
          format.html do
            if params.has_key?(:checkout)
              @order.next if @order.cart?
              redirect_to checkout_state_path(@order.checkout_steps.first)
            else
              redirect_to cart_path
            end
          end
        end
      else
        respond_with(@order)
      end
    end

    # Shows the current incomplete order from the session
    def edit
      @order = current_order || Order.new
      associate_user

      if stale?(current_order)
        respond_with(current_order)
      end
    end

    # Adds a new item to the order (creating a new order if none already exists)
    def populate
      populator = Spree::OrderPopulator.new(current_order(create_order_if_necessary: true), current_currency)
      if populator.populate(params[:variant_id], params[:quantity])
        current_order.ensure_updated_shipments

        respond_with(@order) do |format|
          format.html { redirect_to cart_path }
        end
      else
        flash[:error] = populator.errors.full_messages.join(" ")
        redirect_to :back
      end
    end

    # Adds multiple items to the order
    def populate_multiple
      populator = Spree::OrderPopulator.new(current_order(create_order_if_necessary: true), current_currency)
      variants = [params[:var_0], params[:var_1], params[:var_2], params[:var_3], params[:var_4], params[:var_5], params[:var_6], params[:var_7], params[:var_8], params[:var_9]]
      quantities = [params[:qty_0], params[:qty_1], params[:qty_2], params[:qty_3], params[:qty_4], params[:qty_5], params[:qty_6], params[:qty_7], params[:qty_8], params[:qty_9]]
      i = 0
      while i < 10  do
        if !variants[i].blank? and !quantities[i].blank?
          if populator.populate(variants[i], quantities[i])
            current_order.ensure_updated_shipments
          end
        end
        i+=1
      end

      respond_with(@order) do |format|
        format.html { redirect_to bulk_orders_path }  
      end    
    end   

    def empty
      if @order = current_order
        @order.empty!
      end

      redirect_to spree.cart_path
    end

    def empty_bulk_order
      if @order = current_order
        @order.empty!
      end

      redirect_to bulk_orders_path
    end    

    def accurate_title
      if @order && @order.completed?
        Spree.t(:order_number, :number => @order.number)
      else
        Spree.t(:shopping_cart)
      end
    end

    def check_authorization
      cookies.permanent.signed[:guest_token] = params[:token] if params[:token]
      order = Spree::Order.find_by_number(params[:id]) || current_order

      if order
        authorize! :edit, order, cookies.signed[:guest_token]
      else
        authorize! :create, Spree::Order
      end
    end

    private

      def order_params
        if params[:order]
          params[:order].permit(*permitted_order_attributes)
        else
          {}
        end
      end

      def assign_order_with_lock
        @order = current_order(lock: true)
        unless @order
          flash[:error] = Spree.t(:order_not_found)
          redirect_to root_path and return
        end
      end
      
     def apply_coupon_code
     
        connection = ActiveRecord::Base.connection
	    query = "select code from spree_promotions where id = (select promotion_id from spree_promotion_rules where id = (select promotion_rule_id from    spree_promotion_rules_users where user_id = "+ spree_current_user.id.to_s+"));"
	    @result = connection.execute(query) 
	    disc = 0
        disc = @result[0]
        
	   if promotion = Promotion.where(:code => disc['code']).first
	        promotion.activate(order: @order, :coupon_code => disc)
	        puts "---------------------"+promotion.inspect
       end
       
    end

      
  end
end
