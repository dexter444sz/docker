FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install tomcat9 -y
RUN apt-get install maven -y
RUN apt-get install git -y
RUN cd /home/
ADD boxfuse-sample-java-war-hello /home/
#RUN cd /home/boxfuse-sample-java-war-hello/
#RUN mvn package
#RUN cd /home/boxfuse-sample-java-war-hello/target/
#RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
#EXPOSE 8080
CMD ["catalina.sh", "run"]