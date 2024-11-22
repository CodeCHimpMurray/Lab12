SELECT concat(course_name, ' - ', semester) AS courses_semester
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'fri%';

SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE 

SELECT SUBSTRING(status, 1, 15) AS prefix, count(*)
FROM assignments
GROUP BY prefix;

SELECT course_name, length(course_name) AS name_length
FROM courses
ORDER BY length(course_name) DESC

SELECT upper(course_name) AS uppercase
FROM courses

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%'

SELECT *
FROM assignments
WHERE due_date IS NULL

