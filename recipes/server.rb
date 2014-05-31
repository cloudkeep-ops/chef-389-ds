#
# Cookbook Name:: 389-ds
# Recipe:: server
#
# Copyright (C) 2014 Rackspace, US Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package '389-ds-base'

directory '/etc/389-ds' do
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

execute 'setup-ds.pl' do
  command 'setup-ds.pl --silent --file=/etc/389-ds/setup.inf'
  action :nothing
end

template '/etc/389-ds/setup.inf' do
  source 'setup.inf.erb'
  notifies :run, 'execute[setup-ds.pl]'
end
