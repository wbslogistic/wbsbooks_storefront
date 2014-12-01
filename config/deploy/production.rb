server '178.21.239.6', :web, :app, :db, primary: true
set :domain_name,     'wbsbooks_storefront'
set :application,     'oleg'
set :user,            'oleg'

set :rails_env,   'production'
set :branch,      'master'
set :deploy_to,   -> { "/home/oleg/apps/wbsbooks_storefront" }

top.env.current_environment.set 'RAILS_ENV', 'production'
