module Spree
  class SettingsController < Spree::StoreController
    respond_to :html
    skip_before_filter :verify_authenticity_token  
    layout "no_catalog"
    
    def index
    
    end
    
    def updatesettings
           Spree::Config.set(currency: params[:currency_id])
           session[:locale] = I18n.locale =  params[:locale_id]
           redirect_to '/settings'
    end
    
  end
end