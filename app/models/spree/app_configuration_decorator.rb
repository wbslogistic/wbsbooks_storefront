Spree::AppConfiguration.class_eval do
  preference :dollar_exchange_rate, :decimal
  preference :euro_exchange_rate, :decimal

  preference :azbuka_rrt, :decimal
  preference :eksmo_rrt, :decimal
  preference :piter_rrt, :decimal
  preference :szko_rrt, :decimal
  preference :default_rrt, :decimal

end