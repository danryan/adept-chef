#
# Cookbook Name:: adept
# Recipe:: centos-6_3-64
#
# Copyright (C) 2012 Dan Ryan
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'lxc'
include_recipe "adept::lxc_centos"

lxc_container 'centos-6_3-64' do
  action :create
  template 'centos'
  arch "x86_64"
  release "6"
end

lxc_service 'centos-6_3-64' do
  action :start
end
