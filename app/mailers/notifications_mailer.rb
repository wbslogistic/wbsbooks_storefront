
class NotificationsMailer < ActionMailer::Base
	
		def sendmail(mail, subject, body,description)
		  @subject = subject
		  @body = body
		  @mail = mail
		  @description = description
	      mail(:from =>'wbsbooks.test@gmail.com', :to => mail  ,:subject => subject)
		end
	
end