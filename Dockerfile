# Use a Java 21 runtime
FROM eclipse-temurin:21-jre

# Set the working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Make start.sh executable
RUN chmod +x start.sh

# Expose Minecraft's default port
EXPOSE 25565

# Run the server
CMD ["./start.sh"]
