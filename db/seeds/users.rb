user1 = Spree::User.create! :email => 'oleg@evecco.com', :password => '123456', :password_confirmation => '123456' ,:countryregistration => 97  , :accounttype=>0 , :actcompanyname=> "wbs_company" , :confirmed_at => Time.now
user2 = Spree::User.create! :email => 'dmitry@evecco.com', :password => '123456', :password_confirmation => '123456' ,:countryregistration => 97 , :accounttype=>0 , :actcompanyname=> "wbs_company" , :confirmed_at => Time.now
user3 = Spree::User.create! :email => 'katya@evecco.com', :password => '123456', :password_confirmation => '123456' ,:countryregistration => 97 , :accounttype=>0 , :actcompanyname=> "wbs_company" , :confirmed_at => Time.now
admin_user = Spree::User.create! :email => 'oakrasnov@rambler.ru', :password => 'WBSpass123', :password_confirmation => 'WBSpass123' ,:countryregistration => 97 , :accounttype=>1 , :actcompanyname=> "wbs_company" , :confirmed_at => Time.now
user1.save
user2.save
user3.save
admin_user.save
admin_user.spree_roles << Spree::Role.find_by_name(:admin)# provide admin access

puts 'SAMPLE DATA -> New users created'

