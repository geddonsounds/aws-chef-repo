#
# Cookbook Name:: simple_demo
# Recipe:: undeploy
#
# All rights reserved - Do Not Redistribute
#

service "apache2" do
    action :stop
end

cookbook_file "index.html" do
    mode "0644"
    action :delete
end

cookbook_file "/var/www/html/index.html" do
    mode "0644"
    action :delete
end

service "apache2" do
    action :start
end
