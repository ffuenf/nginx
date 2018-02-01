#
# Cookbook Name:: nginx
# Attributes:: lua
#
# Author:: Arthur Freyman (<afreyman@riotgames.com>)
#
# Copyright 2013, Riot Games
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

default['nginx']['lua']['version']  = '0.10.11'
default['nginx']['lua']['url']      = "https://github.com/chaoslawful/lua-nginx-module/archive/v#{node['nginx']['lua']['version']}.tar.gz"
default['nginx']['lua']['checksum'] = 'c0fb91fcfd1c6e7dec34ca64826ef81ffebafdef6174d254467636f380566626'

default['nginx']['luajit']['version']  = '2.0.5'
default['nginx']['luajit']['url']	     = "http://luajit.org/download/LuaJIT-#{node['nginx']['luajit']['version']}.tar.gz"
default['nginx']['luajit']['checksum'] = '874b1f8297c697821f561f9b73b57ffd419ed8f4278c82e05b48806d30c1e979'
