# TODO: Think about default environment
default['get-native']['environment']['long'] = 'staging'
default['get-native']['environment']['short'] = 'stg'
default['get-native']['user']['name'] = 'get-native'
default['get-native']['user']['primary_group'] = 'get-native'
default['get-native']['user']['initial_password'] = 'get-native'
default['get-native']['user']['home'] = "/home/#{node['get-native']['user']['name']}"
default['get-native']['mysql']['version'] = '5.7'
default['get-native']['mysql']['initial_password'] = 'root'

default['authorization']['sudo']['include_sudoers_d'] = true