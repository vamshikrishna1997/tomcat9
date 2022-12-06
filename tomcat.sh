#/bin/bash
yum update -y 
yum install -y wget java-11-openjdk-devel
cd /usr/local
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
tar -xvf apache-tomcat-9.0.62.tar.gz
mv apache-tomcat-9.0.62 tomcat9
echo "export CATALINA_HOME="/usr/local/tomcat9"" >> ~/.bashrc
source ~/.bashrc
sh /usr/local/tomcat9/bin/startup.sh
