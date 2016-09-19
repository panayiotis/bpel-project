# install packages
package %w{rubygems ruby-devel gcc gcc-c++ redhat-rpm-config libffi-devel sqlite-devel zlib-devel}

# create a user
user app['name'] do
  comment "#{app['name']} rails application user"
  home "/var/www/#{app['name']}"
  gid app['name']
  shell '/bin/bash'
end

# create a directory
directory "/var/www/#{app['name']}/rails" do
  owner     app['name']
  group     app['name']
  mode      '0750'
  action    :create
end

# fix permissions
execute "chown -R #{app['name']}:#{app['name']} /var/www/#{app['name']}"
execute "find /var/www/#{app['name']} -type d -exec chmod 750 {} \\;"
execute "find /var/www/#{app['name']} -type f -exec chmod 640 {} \\;"
execute "find /var/www/#{app['name']}/rails/bin -type f -exec chmod 750 {} \\;"

# create nginx configuration
template "/etc/nginx/conf.d/#{app['name']}.conf" do
  source 'rails/nginx.conf.erb'
  owner 'root'
  group 'root'
  mode '0600'
  variables ({name: app['name'], server_name: app['server_name'] })
end

# restart web service
service app['name'] do
  action [:enable, :stop, :start]
end

# reload nginx service
service 'nginx' do
  action :reload
end
