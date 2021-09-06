FROM gradle:6.7 as builder

# Copy local code to the container image.
COPY build.gradle .
COPY src ./src

RUN gradle clean build --no-daemon

FROM openjdk:8-jre-alpine

# Copy the jar to the production image from the builder stage.
COPY --from=builder /home/gradle/build/libs/gradle.jar /{{ .app_name }}.jar

# Run the web service on container startup.
CMD [ "java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "/{{ .app_name }}.jar" ]