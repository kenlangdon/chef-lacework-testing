# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'security'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-lacework::default'

# Specify a custom source for a single cookbook:
cookbook 'chef-lacework', git: 'https://github.com/lacework/chef-lacework', tag: '0.2.1'

# Override default attributes
override['chef-lacework']['config']['token'] = ENV["LW_ACCESS_TOKEN"]
