
set :deploy_to, '/home/smart/public_html/magento-deploy'

set :tmp_dir,"/home/smart/public_html/tmp"

server '192.190.221.184', roles: [:web, :app, :db],


  ssh_options: {
     user: "smart", # overrides user setting above
    paranoid: true,
    keys: %w('C:\Users\jjbdo\.ssh\id_rsa.pub'),

     forward_agent: true,

   }



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
