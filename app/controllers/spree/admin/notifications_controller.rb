module Spree
 module Admin
  class NotificationsController < Spree::Admin::BaseController
    respond_to :html
    skip_before_filter :verify_authenticity_token  
    
    
    def index
      @notifications = Notification.all
    end
    
    def create
            @notification = Notification.new(notification_params)
            @notification.save
            redirect_to '/admin/subscriptions/'+@notification.subscription_id.to_s
    end
    def edit
      @notification  = Notification.find(params[:id])
      
   end
    def update
          @notification  = Notification.find(params[:id])
          @notification.update(notification_params)
          redirect_to '/admin/subscriptions/'+@notification.subscription_id.to_s
    end
    
    def show
         @notification = Notification.find(params[:id])
    end
    
    def destroy
        @notification = Notification.find(params[:id])
	    @notification.destroy
	    redirect_to '/admin/subscriptions/'+@notification.subscription_id.to_s
    end
    
    private
		def notification_params
		 params.require(:notification).permit(:name,:body,:description,:subscription_id,:posted)
		end

  end
 end
end
