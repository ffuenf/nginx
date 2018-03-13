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
default['nginx']['ngx_pagespeed']['EnableFilters'] = 'canonicalize_javascript_libraries,make_google_analytics_async,make_show_ads_async,collapse_whitespace,combine_css,combine_javascript,responsive_images,responsive_images_zoom,resize_images,sprite_images,recompress_images,rewrite_images,insert_image_dimensions,lazyload_images,move_css_above_scripts,inline_import_to_link,inline_javascript,elide_attributes,extend_cache'
default['nginx']['ngx_pagespeed']['DisableFilters'] = 'defer_javascript,remove_comments,convert_png_to_jpeg'
default['nginx']['ngx_pagespeed']['canonicalize_javascript_libraries'] = true

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
default['nginx']['ngx_pagespeed']['LazyloadImagesAfterOnload'] = 'off'
default['nginx']['ngx_pagespeed']['CombineAcrossPaths'] = 'off'
default['nginx']['ngx_pagespeed']['RespectVary'] = 'on'
