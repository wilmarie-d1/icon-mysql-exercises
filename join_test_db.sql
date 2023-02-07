CREATE DATABASE join_test_db;
# DROP DATABASE join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('Bob', 'bob@example.com', null),
                                             ('Joe', 'joe@example.com', 2),
                                             ('Sally', 'sally@example.com', 3),
                                             ('Jenny', 'jenny@example.com', 4),
                                             ('Mike', 'mike@example.com', 2),
                                             ('Dante', 'dante@example.com', 3),
                                             ('Adam', 'adam@example.com', 1),
                                             ('Eve', 'eve@example.com', null),
                                             ('Nova', 'nova@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;


