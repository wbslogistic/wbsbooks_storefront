user1 = Spree::User.create! :email => 'oleg@evecco.com', :password => '123456', :password_confirmation => '123456'
user2 = Spree::User.create! :email => 'dmitry@evecco.com', :password => '123456', :password_confirmation => '123456'
user3 = Spree::User.create! :email => 'katya@evecco.com', :password => '123456', :password_confirmation => '123456'
admin_user = Spree::User.create! :email => 'oakrasnov@rambler.ru', :password => 'WBSpass123', :password_confirmation => 'WBSpass123'
user1.save
user2.save
user3.save
admin_user.save
admin_user.spree_roles << Spree::Role.find_by_name(:admin)# provide admin access

puts 'SAMPLE DATA -> New users created'

