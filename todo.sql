-- Write the CREATE TABLE statement to make this table.
CREATE table todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR NULL, priority INTEGER NOT NULL DEFAULT 1, created_at DATE NULL, completed_at DATE NULL);

-- Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Shower", NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Dish", NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Grass");
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("CarWash", NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ("Coffee", NULL);

-- Write a SELECT statement to find all incomplete todos.
SELECT * FROM todos WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.
SELECT * FROM todos WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
UPDATE todos SET completed_at = '2017-03-15 12:00:00' WHERE id = 2;

-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at IS NOT NULL;