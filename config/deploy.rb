# config valid only for current version of Capistrano
lock '3.9.1'

set :application, 'Airbnb'
set :repo_url,  'git@github.com:lichtshinoza/Airbnb.git'

set :deploy_to, '/var/www/Airbnb'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

set :ssh_options, auth_methods: ['publickey'],
                  keys: ['/Users/shiinozamb/.ssh/skeypair.pem']

set :unicorn_pid, -> { "/var/www/Airbnb/current/tmp/pids/unicorn.pid" }
set :unicorn_config_path, -> { "/var/www/Airbnb/current/config/unicorn.rb" }
set :keep_releases, 5
set :bundle_env_variables, { nokogiri_use_system_libraries: 1 }

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
