#
# Cookbook Name:: adept
# Recipe:: ubuntu-12.04-32
#
# Copyright (C) 2012 Dan Ryan
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'lxc'

lxc_container 'ubuntu-12_04-32' do
  action :create
  template 'ubuntu'
  arch "i386"
  release "precise"
end

lxc_service 'ubuntu-12_04-32' do
  action :start
end
