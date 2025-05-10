# Use the official OpenJDK image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file from the target directory of the project into the container
COPY target/spring-petclinic-2.4.2.war /app/spring-petclinic.war

# Expose port 8080
EXPOSE 8080

# Run the application (spring-boot app will run on port 8080 by default)
CMD ["java", "-jar", "spring-petclinic.war"]
