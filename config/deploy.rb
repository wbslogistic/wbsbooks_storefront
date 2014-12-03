# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'oleg'
set :repo_url, 'git@github.com:wbslogistic/wbsbooks_storefront.git'
set :rvm_ruby_version, 'ruby-2.1.0'
# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call


set :rails_env, :production
# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/oleg/wbsbooks'
server '178.21.239.6', user: 'oleg', roles: %w{web app}, password: 't@rk0vsky', my_property: :my_value
# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :linked_files, %w{config/unicorn/production.rb config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log public/assets public/spree public/images tmp/pids}
#execute "ln -nfs #{shared_path}/config/unicorn.rb #{release_path}/config/unicorn.rb"

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after 'deploy:publishing', 'deploy:restart'

  task :restart do
    
    
      invoke 'unicorn:stop'
      invoke 'unicorn:start'

    
  end

end
