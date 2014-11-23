module LoadCountries
  class Application < Rails::Application
     
       Rails.configuration.countries = Spree::Country.all
       
  end # end class
end # 