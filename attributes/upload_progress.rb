#
# Cookbook Name:: nginx
# Attributes:: upload_progress
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#
# Copyright 2012, Riot Games
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

default['nginx']['upload_progress']['version']           = '0.9.2'
default['nginx']['upload_progress']['url']               = "https://github.com/masterzen/nginx-upload-progress-module/tarball/v#{node['nginx']['upload_progress']['version']}"
default['nginx']['upload_progress']['checksum']          = 'b286689355442657650421d8e8398bd4abf9dbbaade65947bb0cb74a349cc497'
default['nginx']['upload_progress']['javascript_output'] = true
default['nginx']['upload_progress']['zone_name']         = 'proxied'
default['nginx']['upload_progress']['zone_size']         = '1m'
