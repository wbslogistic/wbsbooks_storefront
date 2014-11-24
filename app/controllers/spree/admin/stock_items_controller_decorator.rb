Spree::Admin::StockItemsController.class_eval do
  
     def create
        variant = Spree::Variant.find(params[:variant_id])
        stock_location = Spree::StockLocation.find(params[:stock_location_id])
        stock_movement = stock_location.stock_movements.build(stock_movement_params)
        stock_movement.stock_item = stock_location.set_up_stock_item(variant)

        if stock_movement.save
              @outofstock = OutofstockItem.all
	          @outofstock.each do |out|
	                  if out.product_id == variant.product_id
	                       product = Spree::Product.find(variant.product_id).name
	                       OutofstockMailer.sendmail(out.user_email,product).deliver
	                       
	                       OutofstockItem.find(out.id).destroy
	                  end
	          end
          flash[:success] = flash_message_for(stock_movement, :successfully_created)
        else
          flash[:error] = Spree.t(:could_not_create_stock_movement)
        end

        redirect_to :back
      end

end