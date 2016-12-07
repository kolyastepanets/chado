lock '3.6.1'

set :application, 'chado'
set :repo_url, 'git@github.com:kolyastepanets/chado.git'
set :deploy_to, "/home/chado/sites/chado"
set :branch, 'development'
set :rvm_ruby_version, 'ruby-2.3.0'
set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{ db/backup log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'unicorn:restart'
    end
  end

  after :publishing, :restart
end