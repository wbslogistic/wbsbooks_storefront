module Spree
  module Admin
    class ExchangeRatesController < Spree::Admin::BaseController

      def edit
        @preferences_security = [:allow_ssl_in_production,
                        :allow_ssl_in_staging, :allow_ssl_in_development_and_test,
                        :check_for_spree_alerts]
        @preferences_currency = [:display_currency, :hide_cents]
        @dollar = Spree::Config.dollar_exchange_rate
        @euro = Spree::Config.euro_exchange_rate

        #rrt values
        @azbuka_rrt = Spree::Config.azbuka_rrt
        @eksmo_rrt = Spree::Config.eksmo_rrt
        @piter_rrt = Spree::Config.piter_rrt
        @szko_rrt = Spree::Config.szko_rrt
        @default_rrt= Spree::Config.default_rrt

      end

      def update
         %w(dollar_exchange_rate euro_exchange_rate szko_rrt eksmo_rrt
          piter_rrt azbuka_rrt default_rrt).each do |key|
          Spree::Config[key] =   params[key] if params[key]
        end

        flash[:success] = Spree.t(:successfully_updated, :resource => Spree.t(:exchange_rates))
        redirect_to edit_admin_exchange_rates_path
      end

      def dismiss_alert
        if request.xhr? and params[:alert_id]
          dismissed = Spree::Config[:dismissed_spree_alerts] || ''
          Spree::Config.set :dismissed_spree_alerts => dismissed.split(',').push(params[:alert_id]).join(',')
          filter_dismissed_alerts
          render :nothing => true
        end
      end


    end
  end
end
