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
  case publisher_name
    when "Эксмо".force_encoding("UTF-8"),"Exmo"
      factor  *= 0.7
    when "Azbuka","Азбука".force_encoding("UTF-8")
      factor  *= 0.72
    when "SZKO","szko","Szko","СЗКО".force_encoding("UTF-8")
      factor  *= 0.76
    when "Piter","питер".force_encoding("UTF-8")
      factor  *= 0.85
    else
      factor  *= 0.85
  end
  rrp_price =  price * factor
  Spree::Money.new(rrp_price, { currency: currency })
end

end
