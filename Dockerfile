# Use the official Flutter image as the base image
FROM ghcr.io/cirruslabs/flutter:3.7.12

# Disable analytics to avoid the welcome message
RUN flutter config --no-analytics

# Create a new user and switch to it
RUN useradd -ms /bin/bash flutteruser
RUN chown -R flutteruser:flutteruser /sdks/flutter
RUN git config --global --add safe.directory /sdks/flutter
USER flutteruser
WORKDIR /app

# Copy the Flutter project files into the container
COPY --chown=flutteruser:flutteruser . /app

# Ensure Flutter dependencies are installed
RUN flutter pub get

RUN flutter precache

# Build the Flutter app (for web in this example)
RUN flutter build web

# Expose the port for the web server
EXPOSE 8080

# Use a simple web server to serve the Flutter web app
CMD ["flutter", "pub", "global", "run", "webdev", "serve", "--hostname", "0.0.0.0", "--port", "8080"]