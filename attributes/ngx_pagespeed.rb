#
# Cookbook Name:: nginx
# Attributes:: ngx_pagespeed
#
# Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)
#
# Copyright 2013-2014, Achim Rosenhagen
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['nginx']['ngx_pagespeed']['version'] = '1.9.32.1-beta'
default['nginx']['ngx_pagespeed']['url'] = "https://codeload.github.com/pagespeed/ngx_pagespeed/tar.gz/v#{node['nginx']['ngx_pagespeed']['version']}"
default['nginx']['ngx_pagespeed']['checksum'] = '072d4ce236a07c401f8a39a7929daa15fd934c76b97d00ab74f0b77acb126dacb65b3b334b80118c5a68698ac35b1914a726b78aa8b57b66ba9a1558ddde7277'

default['nginx']['ngx_pagespeed']['psol']['version'] = '1.9.32.1'
default['nginx']['ngx_pagespeed']['psol']['url'] = "https://dl.google.com/dl/page-speed/psol/#{node['nginx']['ngx_pagespeed']['psol']['version']}.tar.gz"
default['nginx']['ngx_pagespeed']['checksum'] = 'b43820eb28353cd0b22d8c2142e1fcedb30ce8d5abdb940faeb88cfafb793bc3a2354b21797b451deb5a9edf406c6c865ce564ea25b22cdb5ff676b928d4619d'

default['nginx']['ngx_pagespeed']['cache-url'] = '/var/ngx_pagespeed_cache'
default['nginx']['ngx_pagespeed']['cache-size'] = '512M'
default['nginx']['ngx_pagespeed']['enabled'] = 'on'
default['nginx']['ngx_pagespeed']['canonicalize_javascript_libraries'] = false
default['nginx']['ngx_pagespeed']['FileCachePath'] = node['nginx']['ngx_pagespeed']['cache-url']
default['nginx']['ngx_pagespeed']['CacheFlushFilename'] = 'cache.flush'
default['nginx']['ngx_pagespeed']['EnableFilters'] = 'collapse_whitespace,combine_css,combine_javascript,remove_comments,sprite_images,extend_cache'
default['nginx']['ngx_pagespeed']['DisableFilters'] = 'defer_javascript'

default['nginx']['ngx_pagespeed']['Statistics'] = 'on'
default['nginx']['ngx_pagespeed']['StatisticsLogging'] = 'on'
default['nginx']['ngx_pagespeed']['LogDir'] = '/var/log/nginx/pagespeed'
default['nginx']['ngx_pagespeed']['StatisticsLoggingIntervalMs'] = 60_000
default['nginx']['ngx_pagespeed']['StatisticsLoggingMaxFileSizeKb'] = 1_024
default['nginx']['ngx_pagespeed']['MessageBufferSize'] = 100_000

default['nginx']['ngx_pagespeed']['AdminPath'] = '/ngx_pagespeed_admin'
default['nginx']['ngx_pagespeed']['GlobalAdminPath'] = '/ngx_pagespeed_global_admin'
default['nginx']['ngx_pagespeed']['StatisticsPath'] = '/ngx_pagespeed_statistics'
default['nginx']['ngx_pagespeed']['GlobalStatisticsPath'] = '/ngx_pagespeed_global_statistics'
default['nginx']['ngx_pagespeed']['MessagesPath'] = '/ngx_pagespeed_message'
default['nginx']['ngx_pagespeed']['ConsolePath'] = '/ngx_pagespeed_console'

default['nginx']['ngx_pagespeed']['FileCacheSizeKb'] = 102_400
default['nginx']['ngx_pagespeed']['FileCacheCleanIntervalMs'] = 600_000
default['nginx']['ngx_pagespeed']['FileCacheInodeLimit'] = 500_000
default['nginx']['ngx_pagespeed']['LRUCacheKbPerProcess'] = 8_192
default['nginx']['ngx_pagespeed']['LRUCacheByteLimit'] = 16_384
default['nginx']['ngx_pagespeed']['CacheFlushPollIntervalSec'] = 600_000
default['nginx']['ngx_pagespeed']['DownstreamCachePurgeMethod'] = 'PURGE'
default['nginx']['ngx_pagespeed']['DownstreamCacheRewrittenPercentageThreshold'] = 95
default['nginx']['ngx_pagespeed']['RetainComment'] = 'esi*'