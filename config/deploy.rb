# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'problemset'

#set :repo_url, 'https://github.com/mamilkew/wae-problemset.git'
set :repo_url, 'https://github.com/st118247/WAE_2016_Project.git'
#set :repo_url, 'git@github.com:st118247/WAE_2016_Project.git'
#set :repo_url, 'git@vgl-ait.org:web16-02.git'


set :passenger_restart_with_touch, true

set :deploy_to, '/home/deploy/problemset'

set :scm, :git

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
set :repo_tree, 'problemset'

set :keep_releases, 5
set :stages,['production']
set :default_stage,'production'
set :user, 'deploy'
set :branch,'master'

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5

