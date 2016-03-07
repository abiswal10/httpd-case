#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#@@@ ruby
case node['platform']
when "amazon", "linux"
  package "httpd"
service 'httpd' do
  supports :status => true
  action [:enable, :start]
end
file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end

when "centos", "redhat"
  package "apache2"
service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

end

