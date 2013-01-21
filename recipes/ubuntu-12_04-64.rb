#
# Cookbook Name:: adept
# Recipe:: ubuntu-12_04-64
#
# Copyright (C) 2012 Dan Ryan
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'lxc'

lxc_container 'ubuntu-12_04-64' do
  action :create
  template 'ubuntu'
	arch "amd64"
	release "precise"
end

lxc_service 'ubuntu-12_04-64' do
  action :start
end
