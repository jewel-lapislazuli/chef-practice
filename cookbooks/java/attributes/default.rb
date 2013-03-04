default['java']['arch'] = node['kernel']['machine'] =~ /x86_64/ ? 'x86_64' : 'i586'

default['java']['x86_64']['pkgname'] = 'jre-7u15-linux-x64.rpm'
default['java']['x86_64']['rpmpath'] = '/root/rpms/' + default['java']['x86_64']['pkgname']
default['java']['i586']['pkgname'] = 'jre-7u15-linux-i586.rpm'
default['java']['i586']['rpmpath'] = '/root/rpms/' + default['java']['i586']['pkgname']
