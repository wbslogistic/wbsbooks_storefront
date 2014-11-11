require 'recap/recipes/rails'
require 'sushi/ssh'
require 'capistrano_colors'
require 'capistrano-unicorn'
require 'capistrano-rbenv'

server '191.235.162.175', :web, :app, :db, primary: true

set :domain_name,     'wbsbooks.cloudapp.net'
set :ruby_version,    '2.1.2'
set :application,     'wbsbooks_storefront'
set :repository,      'git@github.com:wbslogistic/wbsbooks_storefront.git'
set :user,            'wbsbooks_storefront'
set :ssh_options, { forward_agent: true, paranoid: true, keys: "~/.ssh/id_rsa" }

#== Multistage
set :stages, %w(production staging)
set :default_stage, 'production'
require 'capistrano/ext/multistage'


#== Recipes
#set :recipes_dir, File.expand_path('/cap-recipes', __FILE__)
#load recipes_dir + '/config/recipes/base'
#load recipes_dir + '/config/recipes/nginx'
#load recipes_dir + '/config/recipes/postgresql'
#load recipes_dir + '/config/recipes/rbenv'
#load recipes_dir + '/config/recipes/redis'
#load recipes_dir + '/config/recipes/unicorn'

#== Fallback vars for old recipes
set(:current_path) { deploy_to }
set(:shared_path)  { deploy_to }
set(:release_path) { deploy_to }
set(:current_revision) { '1' }

set(:rails_server)  { 'unicorn' }
set :unicorn_user,    -> { nil}
set :unicorn_pid,     -> { "#{shared_path}/tmp/pids/unicorn.pid"  }
set :unicorn_config,  -> { "#{shared_path}/config/unicorn.rb" }
set :unicorn_log,     -> { "#{shared_path}/log/unicorn.log"   }
set :unicorn_workers, 1

#after 'deploy:restart', 'unicorn:reload'    # app IS NOT preloaded
after 'deploy:restart', 'unicorn:restart'   # app preloaded
#after 'deploy:restart', 'unicorn:duplicate' # before_fork hook implemented (zero downtime deployments)
