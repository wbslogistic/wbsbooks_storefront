set :rails_env,   'development'
set :branch,      'master'
set :deploy_to,   -> { "/home/#{user}/apps/#{domain_name}" }

#top.env.current_environment.set 'RAILS_ENV', 'production'
