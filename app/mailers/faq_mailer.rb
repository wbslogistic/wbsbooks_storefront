
class FaqMailer < ActionMailer::Base
	
		def faq(name,mail, subject, message,sendcopy)
		  @message = message
		  @from = mail
		  @name = name
		  @subject = subject
		  puts "----------"+sendcopy.to_s
		  @cc=''
		  if sendcopy == '1'
		      @cc = mail
		  end
	      mail(:from => mail ,:to => 'wbsbooks.test@gmail.com', :cc => @cc ,:subject => subject)
		end
	
end