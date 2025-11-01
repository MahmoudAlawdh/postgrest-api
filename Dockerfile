# Use the official PostgREST image as the base
FROM postgrest/postgrest:latest

# (Optional) Set a working directory
WORKDIR /app

# Copy a custom configuration file if you have one
# COPY postgrest.conf /app/postgrest.conf

# Expose the PostgREST port
EXPOSE 3000

# Start PostgREST
CMD ["postgrest"]
