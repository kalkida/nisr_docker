# Use official PostgreSQL image as the base image
FROM postgres

# Expose port 5432 (the default PostgreSQL port)
EXPOSE 5432

# Copy the SQL script to initialize the database
COPY ./nisr.sql /docker-entrypoint-initdb.d/
