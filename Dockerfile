FROM openjdk:11-jdk-slim
CMD ["./gradlew", "clean", "build"]
ARG JAR_FILE_PATH=build/libs/DockerTest-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE_PATH} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]