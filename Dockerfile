FROM tomcat
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
#ADD boxfuse-sample-java-war-hello /home/
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /home/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
