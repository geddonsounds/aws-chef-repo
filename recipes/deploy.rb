#
# Cookbook Name:: simple_demo
# Recipe:: deploy
#
# All rights reserved - Do Not Redistribute
#

service "apache2" do
    action [:stop, :start, :enable]
end

cookbook_file "/var/www/html/index.html" do
    source "index.html"
    mode "0644"
    action[:delete, :create]
end
