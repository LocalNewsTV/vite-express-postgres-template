CREATE ROLE app_admin WITH LOGIN PASSWORD 'app_admin';
ALTER ROLE app_admin CREATEDB;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
