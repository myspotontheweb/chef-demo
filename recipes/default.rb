#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright (C) 2014 Mark O'Connor
# 
# All rights reserved - Do Not Redistribute
#

#
# Node overrides
#

# COOK-4097
node.override["tomcat"]["keytool"] = "/usr/bin/keytool"

# https://wiki.jenkins-ci.org/display/JENKINS/Tomcat
node.override["tomcat"]["catalina_options"] = "-DJENKINS_HOME=/usr/share/jenkins_home -Xmx512m"

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

