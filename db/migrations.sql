CREATE DATABASE shopping_db;
\c shopping_db;
CREATE TABLE items (id SERIAL PRIMARY KEY, name VARCHAR(32), quantity INTEGER);
\dt
