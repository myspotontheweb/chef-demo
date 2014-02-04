
#
# Override attributes
#

# COOK-4097
override["tomcat"]["keytool"] = "/usr/bin/keytool"

# https://wiki.jenkins-ci.org/display/JENKINS/Tomcat
override["tomcat"]["catalina_options"] = "-DJENKINS_HOME=/usr/share/jenkins_home -Xmx512m"

