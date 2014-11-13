 Spree::Core::Engine.routes.prepend do
  #namespace :admin do
  #  resources :reports, :only => [:index, :show] do
  #    collection do
  #      get :sales_total
  #    end
  #  end
  #end
  

  # match "/admin" => "admin/advanced_report_overview#index", :as => :admin
end
