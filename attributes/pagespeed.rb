#
# Cookbook Name:: nginx
# Recipe:: pagespeed_module
#
default['nginx']['ngx_pagespeed']['cache-url'] = '/var/ngx_pagespeed_cache'
default['nginx']['ngx_pagespeed']['cache-size'] = '512M'
default['nginx']['ngx_pagespeed']['enabled'] = 'on'
default['nginx']['ngx_pagespeed']['FileCachePath'] = node['nginx']['ngx_pagespeed']['cache-url']
default['nginx']['ngx_pagespeed']['CacheFlushFilename'] = 'cache.flush'
default['nginx']['ngx_pagespeed']['RewriteLevel'] = 'PassThrough'
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
default['nginx']['ngx_pagespeed']['DownstreamCacheRebeaconingKey'] = 'vfjehtsngihw3f8e'
default['nginx']['ngx_pagespeed']['DownstreamCacheRewrittenPercentageThreshold'] = 95
default['nginx']['ngx_pagespeed']['RetainComment'] = 'esi*'
