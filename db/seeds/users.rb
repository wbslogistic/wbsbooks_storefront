user1 = Spree::User.create! :email => 'oleg@evecco.com', :password => '123456', :password_confirmation => '123456'
user2 = Spree::User.create! :email => 'dmitry@evecco.com', :password => '123456', :password_confirmation => '123456'
user3 = Spree::User.create! :email => 'katya@evecco.com', :password => '123456', :password_confirmation => '123456'

user1.save
user2.save
user3.save

puts 'SAMPLE DATA -> New users created'

