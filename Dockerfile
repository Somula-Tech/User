# Use an official Eclipse Temurin base image
#28
#Prepared by Sidney Smith Ebot
FROM eclipse-temurin:21-jre-alpine
# Maintainer or author
LABEL maintainer="somularamalingeswarreddy2@gmail.com"
# Set the working directory inside the container
WORKDIR /app
# Copy the application's JAR file into the container
COPY /target/user-0.0.1-SNAPSHOT.jar /app/user.jar
# Define the ENTRYPOINT for the container. This command will be executed when the
#container starts
# Arguments provided to 'docker run' will be appended to this ENTRYPOINT
ENTRYPOINT ["java", "-jar", "/app/user.jar"]