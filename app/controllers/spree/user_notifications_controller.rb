module Spree
   class UserNotificationsController < Spree::StoreController
    respond_to :html
    skip_before_filter :verify_authenticity_token  
    layout 'no_catalog'
    
    def index
      @notifications = Notification.all
    end
    
    def create
            @check = params[:user_notification_check]
             @present =  UserNotification.where(:user_id => spree_current_user.id)
             @present.destroy_all
            
            @check.each do |check|
              
		              @UserNotification = UserNotification.new(:user_id => spree_current_user.id , :notification_id => check[0])
		              @UserNotification.save
		              mail = Spree::User.find(@UserNotification.user_id).email
		              subject = Notification.find(@UserNotification.notification_id).name.capitalize
		              body = Notification.find(@UserNotification.notification_id).body
		              description = Notification.find(@UserNotification.notification_id).description
		              NotificationsMailer.sendmail(mail,subject,body,description).deliver
            end
            
            redirect_to user_notifications_url
    end
    def edit
      @UserNotification  = UserNotification.find(params[:id])
   end
    def update
          @UserNotification  = UserNotification.find(params[:id])
          @UserNotification.update(user_notification_params)
          redirect_to user_notifications_url
    end
    
    def show
         @UserNotification = UserNotification.find(params[:id])
    end
    
    def destroy
        @UserNotification = UserNotification.find(params[:id])
	    @UserNotification.destroy
	    redirect_to user_notifications_url
    end
    
    private
		def user_notification_params
		 params.require(:user_notification).permit(:notification_id,:user_id)
		end

  end

end
