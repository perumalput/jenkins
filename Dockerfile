FROM eclipse-temurin:21
# Set the working directory
WORKDIR /app

LABEL mentailer="perumalp@uit.ac.in"

# Copy the Maven wrapper and configuration files first
COPY target/jenkins-0.0.1-SNAPSHOT.jar /app/jenkins-0.0.1-SNAPSHOT.jar

EXPOSE 8087

# Command to run the application
ENTRYPOINT ["java", "-jar", "jenkins-0.0.1-SNAPSHOT.jar"]