--- 21-11-2024 19:24:55
--- t177.db
INSERT INTO assignments (course_id, title, status)
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

--- 21-11-2024 19:25:08
--- t177.db
INSERT INTO assignments (course_id, title, status)
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

--- 21-11-2024 19:25:28
--- t177.db
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

--- 21-11-2024 19:25:32
--- t177.db
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

--- 21-11-2024 19:25:46
--- t177.db
SELECT * FROM assignments
LIMIT 10;

--- 21-11-2024 19:26:12
--- t177.db
SELECT count(*) FROM courses;

--- 21-11-2024 19:26:27
--- t177.db
SELECT min(due_date) FROM assignments;

--- 21-11-2024 19:26:38
--- t177.db
SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

--- 21-11-2024 19:27:10
--- t177.db
SELECT sqlite_version();

--- 21-11-2024 19:27:23
--- t177.db
SELECT upper('ABCxyz');

--- 21-11-2024 19:27:34
--- t177.db
SELECT length('abcde');

--- 21-11-2024 19:27:46
--- t177.db
SELECT 7*5;

--- 21-11-2024 19:27:58
--- t177.db
SELECT concat('ABC', '-', 'xyz');

--- 21-11-2024 19:28:22
--- t177.db
SELECT date();

--- 21-11-2024 19:28:43
--- t177.db
SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

--- 21-11-2024 19:29:51
--- t177.db
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

--- 21-11-2024 19:30:54
--- t177.db
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

--- 21-11-2024 19:31:40
--- t177.db
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

--- 21-11-2024 19:32:10
--- t177.db
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--- 21-11-2024 19:36:22
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: course_name
 ----- 
SELECT concat(course_name, '-', semester);
*****/

--- 21-11-2024 19:37:04
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: semester
 ----- 
SELECT concat('course_name', '-', semester);
*****/

--- 21-11-2024 19:38:46
--- t177.db
SELECT concat(course_name, '-', semester)
FROM courses;

--- 21-11-2024 19:39:39
--- t177.db
SELECT concat(course_name, '-', semester) AS courses_semester
FROM courses;

--- 21-11-2024 19:40:01
--- t177.db
SELECT concat(course_name, ' - ', semester) AS courses_semester
FROM courses;

--- 21-11-2024 19:43:39
--- t177.db
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'friday';

--- 21-11-2024 19:44:09
--- t177.db
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'friday%';

--- 21-11-2024 19:45:20
--- t177.db
SELECT course_id, course_name, lab_time
FROM courses
--WHERE lab_time LIKE 'friday%';

--- 21-11-2024 19:45:36
--- t177.db
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'fri%';

--- 21-11-2024 19:50:52
--- t177.db
SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE;

--- 21-11-2024 19:55:33
--- t177.db
SELECT SUBSTRING(status, 1, 4) AS prefix, count(*)
FROM assignments
GROUP BY prefix;

--- 21-11-2024 19:56:42
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: wrong number of arguments to function SUBSTRING()
 ----- 
SELECT SUBSTRING(status) AS prefix, count(*)
FROM assignments
GROUP BY prefix;
*****/

--- 21-11-2024 19:57:04
--- t177.db
SELECT SUBSTRING(status, 1, 15) AS prefix, count(*)
FROM assignments
GROUP BY prefix;

--- 21-11-2024 20:02:31
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: length
 ----- 
SELECT length(course_name)
FROM courses
GROUP BY length;
*****/

--- 21-11-2024 20:02:35
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: length
 ----- 
SELECT length(course_name)
FROM courses
GROUP BY length;
*****/

--- 21-11-2024 20:04:46
--- t177.db
SELECT course_name, length(course_name) AS name_length
FROM courses
ORDER BY length(course_name) DESC;

--- 21-11-2024 20:13:45
--- t177.db
SELECT course_name, upper(course_name) AS uppercase
FROM courses;

--- 21-11-2024 20:14:03
--- t177.db
SELECT upper(course_name) AS uppercase
FROM courses;

--- 21-11-2024 20:16:41
--- t177.db
SELECT*
FROM assignments
WHERE due_date LIKE '%-09-%';

--- 21-11-2024 20:16:54
--- t177.db
SELECT *
FROM assignments
WHERE due_date LIKE '%-09-%';

--- 21-11-2024 20:17:10
--- t177.db
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

--- 21-11-2024 20:18:17
--- t177.db
SELECT *
FROM assignments
WHERE due_date LIKE '%-09-%';

--- 21-11-2024 20:19:12
--- t177.db
SELECT *
FROM assignments
WHERE due_date IS NULL;

