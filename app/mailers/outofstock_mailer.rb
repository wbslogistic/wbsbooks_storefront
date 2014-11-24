
class OutofstockMailer < ActionMailer::Base
	
		def sendmail(mail,product)
		     @product = product
                     @mail = mail
		     mail(:from => 'wbsbooks.test@gmail.com' ,:to => mail, :subject => 'Product is in stock.')
		end
	
end
