module Spree
  class SettingsController < Spree::StoreController
    respond_to :html
    skip_before_filter :verify_authenticity_token  
    layout "no_catalog"
    
    def index
    
    end
    
    def create
           Spree::Config.set(currency: params[:currency_id])
           session[:locale] = I18n.locale =  params[:locale_id]
           redirect_to_back_or_root_url
    end

private
  def redirect_to_back_or_root_url
    redirect_to(request.referer.present? ? :back : root_path)
  end
    
  end
end
