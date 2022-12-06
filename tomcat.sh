#/bin/bash
yum update -y 
yum install -y wget java-11-openjdk-devel
cd /usr/local
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
tar -xvf apache-tomcat-9.0.62.tar.gz
mv apache-tomcat-9.0.62 tomcat11
echo "export CATALINA_HOME="/usr/local/tomcat11"" >> ~/.bashrc
source ~/.bashrc
sh /usr/local/tomcat11/bin/startup.sh
