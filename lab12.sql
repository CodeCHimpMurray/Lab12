  --Concatenate Course Name and Semester:
SELECT concat(course_name, ' - ', semester) AS courses_semester
FROM courses;

  --Find Courses with Labs on Fridays:
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'fri%';

  --Upcoming Assignments:
SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE 

  --Count Assignments by Status:
SELECT SUBSTRING(status, 1, 15) AS prefix, count(*)
FROM assignments
GROUP BY prefix;

  --Longest Course Name:
SELECT course_name, length(course_name) AS name_length
FROM courses
ORDER BY length(course_name) DESC

  --Uppercase Course Names:
SELECT upper(course_name) AS uppercase
FROM courses

  --Assignments Due in September:
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%'

  --Assignments with Missing Due Dates:
SELECT *
FROM assignments
WHERE due_date IS NULL

