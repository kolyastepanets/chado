role :app, %w{chado@185.14.187.181}
role :web, %w{chado@185.14.187.181}
role :db,  %w{chado@185.14.187.181}

set :rails_env, "production"

server '185.14.187.181', user: 'chado', roles: %w{web app}, primary: true

set :ssh_options, {
  keys: %w(/home/nikolay/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey password)
}
