# Use Ubuntu as the base image
FROM ubuntu:latest

# Install necessary tools
RUN apt-get update && apt-get install -y \
    apache2 \
    zip \
    unzip \
    wget

# Set the working directory
WORKDIR /var/www/html/

# Download and extract the file
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip && \
    unzip photogenic.zip && \
    rm photogenic.zip

# Expose port 80
EXPOSE 80

# Command to run Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
