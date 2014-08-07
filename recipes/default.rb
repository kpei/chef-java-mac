#
# Cookbook Name:: java-mac
# Recipe:: default
#
# Author: Antek Baranski <antek.baranski@gmail.com>
# Editor: Kevin Pei <dude@kpei.me>
#
# Copyright 2014 Antek Baranski
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

header = {'Cookie' => 'oraclelicense=accept-securebackup-cookie'}
jdk_file_name = node['java-mac']['jdk']['download'].split('/')[-1].split('.')[0]
jre_file_name = node['java-mac']['jre']['download'].split('/')[-1].split('.')[0]

case node['java-mac']['type']
  when 'JRE'
    dmg_package jre_file_name do
      app 'Java Runtime Environment 7'
      type 'pkg'
      source   node['java-mac']['jre']['download']
      checksum node['java-mac']['jre']['checksum']
      headers  header
      accept_eula true
      action   :install
    end
  when 'JDK'
    dmg_package jdk_file_name do
      app 'Java Development Kit 7'
      type 'pkg'
      source   node['java-mac']['jdk']['download']
      checksum node['java-mac']['jdk']['checksum']
      headers  header
      accept_eula true
      action   :install
    end
  else
    raise Chef::Exceptions::AttributeNotFound,
          ("The JAVA Mac OS X cookbook only supports JRE or JDK as the installation types")
end
