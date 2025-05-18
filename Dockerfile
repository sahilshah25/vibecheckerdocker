FROM openjdk:23

# Set working directory
WORKDIR /usr/src/myapp

# Copy all files (including the JAR)
COPY . .


EXPOSE 8080

# Use entrypoint so that the PORT environment variable gets evaluated correctly by shell
ENTRYPOINT ["sh", "-c", "java -jar vibecheck-backend-0.0.1-SNAPSHOT.jar --server.port=${PORT:-8080}"]

