-- 6 задание:

-- Есть таблица students с колонками 
-- id int 
-- name varchar 
-- created_at datetime 
-- parent_id int 
-- a) посчитайте количество всех студентов 
-- b) посчитайте количество студентов с именем Иван 
-- c) посчитайте количество студентов созданных после 1 сентября 2020 года 

-- Решение:

CREATE TABLE students (
  id int,
  name varchar,
  created_at datetime,
  parent_id int
 );

a. SELECT COUNT(*) FROM  students;

b. SELECT COUNT(*) FROM  students WHERE (name='Иван');

c. SELECT COUNT(*) FROM  students WHERE (created_at > '01.09.2020');