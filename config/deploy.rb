lock "~> 3.16.0"

set :rvm_ruby_version, '3.0.1'
set :application, 'simple-blog'
set :repo_url, 'https://github.com/username/simple-blog.git'
set :deploy_to, 'var/www/simple-blog'
server '<server_ip>', user: 'root', roles: %w{ app db web }
append :linked_files, "config/master.key"
set :linked_dirs, %w{log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}
set :rvm_map_bins, %w{gem rake ruby rails bundle}

set :branch, :master
set :rails_env, :production