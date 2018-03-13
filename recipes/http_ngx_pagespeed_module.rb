#
# Cookbook Name:: nginx
# Recipe:: pagespeed_module
#

directory node['nginx']['ngx_pagespeed']['FileCachePath'] do
  owner node['nginx']['user']
  group node['nginx']['user']
  action :create
end

directory node['nginx']['ngx_pagespeed']['LogDir'] do
  owner node['nginx']['user']
  group node['nginx']['user']
  action :create
end

mount node['nginx']['ngx_pagespeed']['FileCachePath'] do
  device 'tmpfs'
  fstype 'tmpfs'
  options ["size=#{node['nginx']['ngx_pagespeed']['cache-size']}", 'mode=1733', 'noatime', 'noexec', 'nosuid', 'nodev']
  dump 0
  pass 0
  action [:enable, :mount]
  supports [remount: true]
end

template "#{node['nginx']['dir']}/conf.d/ngx_pagespeed.conf" do
  source 'modules/ngx_pagespeed.conf.erb'
  owner 'root'
  group node['root_group']
  mode 00644
  variables(
    params: node['nginx']['ngx_pagespeed']
  )
  notifies :reload, 'service[nginx]', :delayed
end


directory node['nginx']['source']['prefix'] do
  recursive true
end
cookbook_file '/tmp/install_pagespeed.sh' do
  source 'install_pagespeed.sh'
  mode 00777
end
execute 'install_pagespeed' do
  command "/tmp/install_pagespeed.sh -ym -b #{node['nginx']['source']['prefix']}"
  action :run
end
execute 'convert_pagespeed_libraries' do
  command "#{node['nginx']['source']['prefix']}/incubator-pagespeed-ngx-latest-stable/scripts/pagespeed_libraries_generator.sh > #{node['nginx']['dir']}/pagespeed_libraries.conf"
  action :run
  only_if { node['nginx']['ngx_pagespeed']['canonicalize_javascript_libraries'] }
end

node.run_state['nginx_configure_flags'] =
  node.run_state['nginx_configure_flags'] | ["--add-dynamic-module=#{node['nginx']['source']['prefix']}/incubator-pagespeed-ngx-latest-stable"]
