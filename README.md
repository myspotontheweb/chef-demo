# demo cookbook

A demo cookbook to teach chef. 

This cookbook installs chef and then provisions a java web application, Jenkins

# Requirements

- tomcat

# Usage

This cookbook is confgured to be run using vagrant. First install the following
plugins:

     vagrant plugin install vagrant-omnibus
     vagrant plugin install vagrant-berkshelf
     vagrant plugin install vagrant-chef-zero

Run vagrant as normal

     vagrant up

Once complete Jenkins should be running on on the following URL

- http://10.0.0.10:8080/jenkins

# Attributes

This cookbook is overriding the following tomcat attributes

- override["tomcat"]["keytool"] 
- override["tomcat"]["catalina_options"]

# Recipes

- default

# Author

Author:: Mark O'Connor (mark@myspotontheweb.com)

