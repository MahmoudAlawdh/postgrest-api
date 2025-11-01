# Use the official PostgREST image as the base
FROM postgrest/postgrest:latest

# (Optional) Set a working directory
WORKDIR /app

# Copy a custom configuration file if you have one
# COPY postgrest.conf /app/postgrest.conf

# Expose the PostgREST port
EXPOSE 8080

# Environment variables — you can override these from DigitalOcean App settings
ENV PGRST_DB_URI="postgresql://doadmin:AVNS_Wu97Udu8fqY566t4H9v@umbrellla-do-user-17987721-0.f.db.ondigitalocean.com:25060/umbrella" \
    PGRST_DB_SCHEMAS="data" \
    PGRST_DB_ANON_ROLE="web_anon" \
    PGRST_OPENAPI_MODE="follow-privileges" \
    PGRST_JWT_SECRET="68968f01c15407102fc9ff77fc5fb9f001be39c1a7bf2ffac2e8bd80cb010a7b75c1678c868b90b79c55d1b20536f16046a2e8afb87f453b236106b9b6c12f30" \
    PGRST_OPENAPI_SERVER_PROXY_URI="https://postgrest-9cmqz.ondigitalocean.app"

# Start PostgREST
CMD ["postgrest"]
