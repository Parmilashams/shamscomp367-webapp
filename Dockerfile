FROM tomcat:9.0

COPY target/shamscomp367-webapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080