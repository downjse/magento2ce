lock "3.7.2"
set :pty, true
set :application, "magento"
set :repo_url, "git@github.com:downjse/magento3.git"

set :branch, proc { `git rev-parse --abbrev-ref master`.chomp }
