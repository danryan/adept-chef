#
# Cookbook Name:: adept
# Recipe:: lxc_centos
#
# Copyright (C) 2012 Dan Ryan
# 
# All rights reserved - Do Not Redistribute
#

cookbook_file "/usr/lib/lxc/templates/lxc-centos" do
  source "lxc-centos"
  owner "root"
  group "root"
  mode 00755
end
