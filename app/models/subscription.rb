
class Subscription < ActiveRecord::Base
   
   def self.weekly_update
    @users = Spree::User.all
       @users.each do |u|
                      mail = u.email
                      @UserNotification = UserNotification.find_by_name('Weekly digest')
		              subject = Notification.find(@UserNotification.notification_id).name.capitalize
		              body = Notification.find(@UserNotification.notification_id).body
		              description = Notification.find(@UserNotification.notification_id).description
		              NotificationsMailer.sendmail(mail,subject,body,description).deliver
        end
  end


end