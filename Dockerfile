FROM tomcat:9.0
RUN groupadd -r mygroup && useradd -r -g mygroup myuser
USER root 
RUN chmod 777 /usr/local/tomcat/webapps/
USER myuser
COPY ./target/onlinebookstore.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
