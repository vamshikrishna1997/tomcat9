#!/bin/bash
ver=`curl --silent http://mirror.vorboss.net/apache/tomcat/tomcat-9/ | grep v9 | awk '{split($5,c,">v") ; split(c[2],d,"/") ; print d[1]}'`
sudo yum update -y
sudo yum install -y java wget git
cd /opt
rm -rf apache*
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
sudo tar xvzf apache-tomcat-9.*
sudo rm -rf apache*.gz
sudo git clone https://github.com/adhig93/tomcat-config
sudo cp ./tomcat-config/context.xml /opt/apache-tomcat-9.*/webapps/manager/META-INF/context.xml
sudo cp ./tomcat-config/context.xml /opt/apache-tomcat-9.*/webapps/host-manager/META-INF/context.xml
sudo cp ./tomcat-config/tomcat-users.xml /opt/apache-tomcat-9.*/conf/tomcat-users.xml
sudo rm -rf tomcat-config
cd /opt/apache-tomcat-9.*
sudo sh bin/startup.sh
