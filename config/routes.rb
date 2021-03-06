Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'search_products/search'
  get 'news' => 'news#index'
  get 'news/:source_type' => 'news#index'

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'

  get 'about' => 'spree/home#about', :as => :about
  get 'contact' => 'spree/home#contact', :as => :contact
  get 'faq' => 'spree/home#faq', :as => :faq
  post 'askquestion' => 'spree/home#askquestion', :as => :askquestion
  get 'ajax_books' => 'ajax#books', :as => :ajax_books
  get 'test' => 'test#index', :as => :test 
 

  Spree::Core::Engine.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
    get 'search_products/search'
    post '/orders/:number/repeated_order' => 'repeated_orders#create', as: :repeat_order
    match '/accountconfirm', to: 'users#account_confirm' , via: :get
    resources :settings, :only => [:index,:create]
    resources :outofstock_items
    get 'out_destroy_all' => 'outofstock_items#destroy_all'
    resources :specials, :only => [:index]
    resources :partners, :only => [:index, :show]    
    get 'search' => 'products#advanced_search', :as => :search
    resources :bulk_orders, :only => [:index]
    resources :new_items, :only => [:index]
    resources :orders, :except => [:new, :create, :destroy] do
      post :populate_multiple, :on => :collection
      post :empty_bulk_order, :on => :collection
    end
    
  namespace :admin do
      resources :reports do
        collection do
          [
            :revenue,:sales_total, :count, :units, :profit, :top_customers, :top_products,
            :geo_revenue, :geo_units, :geo_profit
          ].each do |method_name|
            get method_name
            post method_name
          end
        end
      end

      resource :exchange_rates do
        collection do
          post :dismiss_alert
        end
      end
      resource :n_items
    end
  end


  Spree::Core::Engine.add_routes do
    namespace :admin do
      resources :n_items
    end
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

