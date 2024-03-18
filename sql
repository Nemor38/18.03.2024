CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

ALTER TABLE addresses
ADD index_code VARCHAR(5);

ALTER TABLE addresses
ADD street VARCHAR(100) DEFAULT 'вулиця І. Франка';

php artisan migrate:rollback --step=3
