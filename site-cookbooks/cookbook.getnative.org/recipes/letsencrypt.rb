#
# Cookbook Name:: cookbook.getnative.org
# Recipe:: letsencrypt
#
# Copyright (c) 2016 Hank Ehly, All Rights Reserved.

cron 'letsencrypt' do
    command "/usr/bin/letsencrypt renew --config-dir #{node['apache']['dir']}/ssl --agree-tos --email #{node['getnative']['contact']}"
    minute '0'
    hour '0,12'
    user 'root'
    mailto node['getnative']['contact']
end

#
# Obtain TLS Certificate Manually:
#
# sudo /usr/bin/letsencrypt
#   --domains stg.getnative.org,www.stg.getnative.org
#   --apache
#   --non-interactive
#   --agree-tos
#   --uir
#   --hsts
#   --email admin@getnative.org
#   --config-dir /etc/apache2/ssl
#   --apache-server-root /etc/apache2
#   --redirect
#   --apache-vhost-root /etc/apache2/sites-available
#
