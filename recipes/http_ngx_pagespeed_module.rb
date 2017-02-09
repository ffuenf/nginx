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
bash 'extract_psol' do
  cwd node['nginx']['source']['prefix']
  code <<-EOH
    bash <(curl -f -L -sS https://ngxpagespeed.com/install) -ym -b #{node['nginx']['source']['prefix']}
  EOH
end

node.run_state['nginx_configure_flags'] =
  node.run_state['nginx_configure_flags'] | ["--add-dynamic-module=#{node['nginx']['source']['prefix']}/ngx_pagespeed-latest-stable"]
