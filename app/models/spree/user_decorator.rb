Spree::User.class_eval do
  
   validates_presence_of :countryregistration
   validates_presence_of :accounttype
   validates_presence_of :actcompanyname , presence: true, if: :is_accounttype?
   
   #devise :registerable, :confirmable
   
   private
	   def is_accounttype?
		  self.accounttype == 1
		end


end
