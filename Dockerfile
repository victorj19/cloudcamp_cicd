FROM amazoncorretto:21-alpine-jdk
ADD . . 
RUN chmod +x gradlew
RUN ./gradlew bootJar
ENTRYPOINT [ "java", "jar", "build/libs/*.jar"]