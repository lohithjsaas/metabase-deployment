FROM metabase/metabase:latest

# Set environment variables for the application
ENV MB_DB_TYPE=postgres
ENV MB_DB_PORT=5432
ENV JAVA_TOOL_OPTIONS="-Xmx512m"

# Expose the port Metabase runs on
EXPOSE 3000

# Use the default entrypoint from the base image
CMD ["sh", "/app/run_metabase.sh"]