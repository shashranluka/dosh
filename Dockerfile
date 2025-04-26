# Use the official Flutter image as the base image
FROM cirrusci/flutter:stable

# Set the working directory inside the container
WORKDIR /app

# Copy the Flutter project files into the container
COPY . /app

# Ensure Flutter dependencies are installed
RUN flutter pub get

# Build the Flutter app (for web in this example)
RUN flutter build web

# Expose the port for the web server
EXPOSE 8080

# Use a simple web server to serve the Flutter web app
CMD ["flutter", "pub", "global", "run", "webdev", "serve", "--hostname", "0.0.0.0", "--port", "8080"]