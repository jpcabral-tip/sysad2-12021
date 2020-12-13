CREATE SCHEMA IF NOT EXISTS example_database;

USE example_database;


CREATE TABLE IF NOT EXISTS example_database.todo_list(
	item_id INT AUTO_INCREMENT,
	content VARCHAR(255),
	PRIMARY KEY(item_id)
);

-- SAMPLE ENTRIES
INSERT INTO example_database.todo_list(content) VALUES("My first important item");
INSERT INTO example_database.todo_list(content) VALUES("My second important item");
INSERT INTO example_database.todo_list(content) VALUES("My third important item");
INSERT INTO example_database.todo_list(content) VALUES("and this one more thing");
