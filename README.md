java-mac
===========

Mac OS X JAVA cookbook.  This cookbook is originally created by Antek Baranski, I've made a few small edits to incorporate the ability to
change download locations. The current and new attribute parameters are specified below.

Attributes
============

* `default['java-mac']['type']` - Specify whether to install Java Development kit [JDK] or Java Runtime Environment [JRE]

* `default['java-mac']['jdk']['download']` - Download location of the JDK, this can be retrieved from the Java Oracle website.  Make sure the /otn-pub/ is present in the link
* `default['java-mac']['jdk']['checksum']` - SHA256 Checksum of the JDK .dmg file to prevent Chef from downloading the package each iteration

* `default['java-mac']['jre']['download']` - Download location of the JRE, this can be retrieved from the Java Oracle website.  Make sure the /otn-pub/ is present in the link
* `default['java-mac']['jre']['checksum']` - SHA256 Checksum of the JRE .dmg file to prevent Chef from downloading the package each iteration

Requirements
============

Chef 11

NOTE
===========

The cookbook currently depends on a dmg cookbook by Sauraus that is ahead of the official Chef dmg cookbook.

Authors
==================

- Author:: Antek Baranski <antek.baranski@gmail.com>
- Editor:: Kevin Pei <dude@kpei.me>

```text
Copyright 2014 Antek Baranski

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
