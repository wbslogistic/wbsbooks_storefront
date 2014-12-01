server 'wbsbooks.cloudapp.net', :web, :app, :db, primary: true
set :domain_name,     'wbsbooks.cloudapp.net'
set :application,     'wbsbooks_storefront'
set :user,            'wbsbooks_storefront'

set :rails_env,   'staging'
set :branch,      'staging'
set :deploy_to,   -> { "/home/wbsbooks_storefront/apps/wbsbooks.cloudapp.net" }

top.env.current_environment.set 'RAILS_ENV', 'staging'
