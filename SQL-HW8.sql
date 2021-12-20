-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET last_name = 'Niso'
WHERE last_name ~~ 'R%'
RETURNING *;
-- *************************************
UPDATE employee 
SET first_name = 'ABC'
WHERE email IS NULL 
RETURNING *;
-- *************************************
UPDATE employee
SET email = 'deneme@deneme.com'
WHERE id BETWEEN 13 AND 18  
RETURNING *;
-- *************************************
UPDATE employee
SET birthday = NULL
WHERE first_name ~~ '____' 
RETURNING *;
-- *************************************
UPDATE employee
SET id = 55 
WHERE last_name LIKE 'G%'
RETURNING *;
-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE first_name LIKE 'Ol%'
RETURNING *;
-- *************************************
DELETE FROM employee
WHERE id BETWEEN 2 AND 5 
RETURNING *;
-- *************************************
DELETE FROM employee
WHERE last_name ~~ 'Mustoo' 
RETURNING *;
-- *************************************
DELETE FROM employee
WHERE birthday IS NULL 
RETURNING *;
-- *************************************
DELETE FROM employee
WHERE email = 'deneme@deneme.com' AND first_name LIKE '___' or first_name LIKE '__' 
RETURNING *;
