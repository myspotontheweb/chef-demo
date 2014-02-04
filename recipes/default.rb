#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

#
# Other recipes
# 
include_recipe "tomcat"

#
# Resources
# 
directory "/usr/share/jenkins_home" do
  owner node['tomcat']['user']
  group node['tomcat']['group']
end

remote_file "#{node['tomcat']['webapp_dir']}/jenkins.war" do
  source "http://mirrors.jenkins-ci.org/war/latest/jenkins.war"
  owner node['tomcat']['user']
  group node['tomcat']['group']
end

