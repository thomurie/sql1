DROP DATABASE IF EXISTS craigslist

CREATE DATABASE craigslist

c\ craigslist


CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL,
)

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    users_name TEXT NOT NULL.
    region INT FOREIGN KEY REFERENCES regions,
)

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    post_title VARCHAR(12) NOT NULL,
    post_text TEXT DEFAULT NULL,
    users_id INT NOT NULL FOREIGN KEY REFERENCES users,
    location_id INT NOT NULL FOREIGN KEY REFERENCES locations.
    region_id INTEGER NOT NULL REFERENCES regions,
)

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    location_name TEXT NOT NULL,
    region_id INT NOT NULL FOREIGN KEY REFERENCES regions,
)