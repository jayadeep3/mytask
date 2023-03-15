FROM ubuntu

MAINTAINER jayadeep

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/src/apache-tomcat-9.0.73-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.73/* /opt/tomcat/.
RUN apt-get install openjdk-11-jdk -y
RUN java -version

WORKDIR /opt/tomcat/webapps
EXPOSE 9090

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
