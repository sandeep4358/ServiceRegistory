FROM tomcat:10.1.16-jdk17-temurin-jammy

MAINTAINER "SANDEEP KUMAR"

#delte all the file inside the webapps folder(in the latest tomcat we are already deleted but just in case)
#RUN     rm -rf /user/local/tomcat/webapps/*

#now copy your project in that folder
COPY ./target/ServiceDiscovery.war /usr/local/tomcat/webapps/ServiceDiscovery.war


EXPOSE 8761

CMD ["catalina.sh", "run"]
