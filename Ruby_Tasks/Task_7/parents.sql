-- 7 Задание:

-- Так же есть таблица parents (см задание 5) 
-- id int 
-- name varchar 
-- created_at datetime 
-- a) посчитайте количество студентов с родителями 
-- b) посчитайте количество студентов с родителями при том что имя родителя Марина 
-- c) посчитайте количество студентов без родителя 

-- Решение:

CREATE TABLE parents ( -- поторопился, была таблица students, исправил
  id int,
  name varchar,
  created_at datetime
 );

a. SELECT COUNT(*) FROM students WHERE parent_id != null;

b. SELECT COUNT(*) FROM students INNER JOIN parents ON parents.id = student.parent_id WHERE parents.name = 'Марина';

c. SELECT COUNT(*) FROM students WHERE parent_id IS NULL;
