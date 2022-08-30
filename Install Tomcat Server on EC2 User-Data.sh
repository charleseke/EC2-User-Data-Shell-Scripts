#! /bin/bash

# Install Java
sudo amazon-linux-extras install java-openjdk11 -y

# Create tomcat directory / Download and unzip tomcat
# Note: Make sure you change <version> with the tomcat version which you download. (apache-tomcat-<version>.tar.gz)
sudo su -

cd /opt

wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz
tar -xvzf /opt/apache-tomcat-10.0.23.tar.gz

# Give executing permissions to startup.sh and shutdown.sh which are under bin.
chmod +x /opt/apache-tomcat-10.0.23/bin/startup.sh
chmod +x /opt/apache-tomcat-10.0.23/bin/shutdown.sh

# Start tomcat services
cd /opt/apache-tomcat-10.0.23/bin
./startup.sh