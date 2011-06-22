$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.2'        # Or whatever env you want it to run in.
require 'bundler/capistrano'

set :user, "deploy"
set :password, "mpwd3ploy"

set :use_sudo, false

set :application, "simple"
set :repository,  "git@github.com:cmrosado/simple.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "~/apps/#{application}"

role :web, "184.106.134.155"                          # Your HTTP server, Apache/etc
role :app, "184.106.134.155"                          # This may be the same as your `Web` server
role :db,  "184.106.134.155", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

desc "Link /public/system to a directory shared by each release"
task :move_system, :roles => :app do
  run "rm -Rf #{latest_release}/public/system"
  run "ln -s #{deploy_to}/shared/system #{latest_release}/public/system"
end

desc "Make tmp and log dir"
task :make_tmp_dirs, :roles => :app do
  run "rm -Rf #{latest_release}/tmp"
  run "rm -Rf #{latest_release}/log"
  run "mkdir #{latest_release}/tmp"
  run "mkdir #{latest_release}/log"
end

before "deploy:restart", :make_tmp_dirs
before "deploy:restart", :move_system