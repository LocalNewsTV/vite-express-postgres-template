FROM postgres:16

COPY db/entrypoint/* /docker-entrypoint-initdb.d/

EXPOSE 5432
HEALTHCHECK --interval=10s --timeout=10s --retries=5 CMD ["pg_isready", "-U", "postgres"]
