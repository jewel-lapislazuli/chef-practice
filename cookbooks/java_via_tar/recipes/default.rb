#
# Cookbook Name:: java_via_tar
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "install_java" do
  action :run
  user "root"
  
  case node["arch"]
  when "i586"
    notifies :run, "bash[install_i586_java]"
  when "x86_64"
    notifies :run, "bash[install_x86_64_java]"
  end
end

bash "install_i586_java" do
  action :nothing
  user "root"
  cwd node["java"]["modpath"]

  code <<-EOH
  tar xzf #{node["java"]["i586"]["modname"]} -C #{node["java"]["installdir"]}
  EOH
end

bash "install_x86_64_java" do
  action :nothing
  user "root"
  cwd node["java"]["modpath"]

  code <<-EOH
  tar xzf #{node["java"]["x86_64"]["modname"]} -C #{node["java"]["installdir"]}
  EOH
end
