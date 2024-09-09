CREATE SCHEMA IF NOT EXISTS app;

CREATE TABLE IF NOT EXISTS app.users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    note VARCHAR(100)
);

INSERT INTO app.users
    (username, first_name, last_name, email, note)
VALUES
    ('LocalNewsTV', 'Matthew', 'Logan', 'loganmatthewdev@gmail.com', 'Repo Author');
