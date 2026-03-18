FROM amazoncorretto:21-alpine-jdk
ADD . . 
RUN chmod +x gradlew
RUN ./gradlew bootJar
ENTRYPOINT [ "java", "jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]