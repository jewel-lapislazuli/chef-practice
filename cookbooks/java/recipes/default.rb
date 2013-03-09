#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2013, Example Com
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

arch = node["arch"]

rpm_package "java-install" do
  action :install
  
  source node['java'][arch]['rpmpath']

  only_if do
    node["java"]["control"] == "install"
  end
end

rpm_package "java-remove" do
  action :remove
  
  package_name node["java"][arch]["pkgname"]

  only_if do
    node["java"]["control"] == "remove"
  end
end
