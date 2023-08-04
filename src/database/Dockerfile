FROM postgres
ENV POSTGRES_DB app_db
ENV POSTGRES_USER app_admin
ENV POSTGRES_PASSWORD app_admin
COPY init.sql /docker-entrypoint-initdb.d/
