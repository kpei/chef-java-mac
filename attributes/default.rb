#
# Cookbook Name:: java-mac
# Attribute:: default
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

default['java-mac']['type'] = 'JDK'
default['java-mac']['jdk']['download'] = "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-macosx-x64.dmg"
default['java-mac']['jdk']['checksum'] = "d91d29d969f140f745b2e771e3f985a271bf54e97c4869b50143f4d27b5fce1b"

default['java-mac']['jre']['download'] = "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-macosx-x64.dmg"
default['java-mac']['jre']['checksum'] = "b89996e10f833187d56cd7a740934dbca8232a7337e0250163f82039bacf7324"