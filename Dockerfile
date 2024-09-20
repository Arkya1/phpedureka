	# Use the existing devopsedu/webapp image as the base
FROM devopsedu/webapp

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP website files into the container
COPY website/ ./

# Ensure the correct permissions (if necessary)
RUN chown -R www-data:www-data /var/www/html

# Expose the port (usually 80 for PHP applications)
EXPOSE 80

# Command to run the application (if necessary)
CMD ["apache2-foreground"]

