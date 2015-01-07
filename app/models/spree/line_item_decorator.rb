Spree::LineItem.class_eval do
def reload_price
    if variant
        self.price = variant.price
        self.cost_price = variant.cost_price
        self.currency = variant.currency
    end
end


def rrp publisher_name
  factor = 1.8
  dynamic_factor = 0.85

  case publisher_name
    when "Эксмо".force_encoding("UTF-8"),"Eksmo",'eksmo'
      dynamic_factor = Spree::Config.eksmo_rrt ? Spree::Config.eksmo_rrt : 0.7
    when "Azbuka","Азбука".force_encoding("UTF-8")
      dynamic_factor = Spree::Config.azbuka_rrt ? Spree::Config.azbuka_rrt : 0.72
    when "SZKO","szko","Szko","СЗКО".force_encoding("UTF-8")
      dynamic_factor = Spree::Config.szko_rrt ? Spree::Config.szko_rrt : 0.76
    when "Piter","питер".force_encoding("UTF-8"),"Питер".force_encoding("UTF-8")
      dynamic_factor = Spree::Config.piter_rrt ? Spree::Config.piter_rrt : 0.85
    else
      dynamic_factor = Spree::Config.default_rrt ? Spree::Config.default_rrt : 0.85
  end

  rrp_price =  price * factor * dynamic_factor

  Spree::Money.new(rrp_price, { currency: currency })
end

end
