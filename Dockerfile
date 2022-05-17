FROM openjdk:11
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY /home/runner/work/simple-java-maven-app/simple-java-maven-app/target/my-app-1.0-SNAPSHOT.jar $PROJECT_HOME/my-app-1.0-SNAPSHOT.jar
WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
