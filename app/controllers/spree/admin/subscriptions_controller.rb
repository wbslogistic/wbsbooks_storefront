module Spree
 module Admin
  class SubscriptionsController < Spree::Admin::BaseController
    respond_to :html
    skip_before_filter :verify_authenticity_token  
    
    
    def index
      @subscriptions = Subscription.all
    end
    
    def create
            @Subscription = Subscription.new(subscription_params)
            @Subscription.save
            redirect_to admin_subscriptions_url
    end
    def edit
      @Subscription  = Subscription.find(params[:id])
   end
    def update
          @Subscription  = Subscription.find(params[:id])
          @Subscription.update(subscription_params)
          redirect_to admin_subscriptions_url
    end
    
    def show
         @subscription = Subscription.find(params[:id])
         @notifications = Notification.where(:subscription_id => @subscription.id )
    end
    
    def destroy
        @Subscription = Subscription.find(params[:id])
	    @Subscription.destroy
	    redirect_to admin_subscriptions_url
    end
    
    private
		def subscription_params
		 params.require(:subscription).permit(:name,:description)
		end

  end
 end
end
