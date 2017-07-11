-- Write the CREATE TABLE statement to make this table.
CREATE table todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR NULL, priority INTEGER NOT NULL DEFAULT 1, created_at DATE NULL, completed_at DATE NULL);

-- Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Shower", "shower with no water", 1, '2017-01-01 03:12:16', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Dish", "do dish with no soap", 3, '2017-02-07 06:12:18',NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Grass", "cut grass with no tools", 4, '2017-06-09 09:42:28', '2017-06-09 10:12:27');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("CarWash", "car wash with no car", 5,'2017-06-11 10:43:28', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Coffee","drink coffee with no mug", 2,'2017-08-11 12:43:28', NULL);

-- Write a SELECT statement to find all incomplete todos.
SELECT * FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.
SELECT * FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = '2017-03-15 12:00:00' WHERE id = 2;

-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS NOT NULL;

