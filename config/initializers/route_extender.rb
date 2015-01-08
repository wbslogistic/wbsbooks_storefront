Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :n_items
  end
end