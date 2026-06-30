SELECT *
FROM courses
WHERE credits > 3;

SELECT
    course_id,
    COUNT(*) AS enrollment_count
FROM enrollments
GROUP BY course_id;

SELECT
    s.first_name,
    s.last_name,
    c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT *
FROM professors
WHERE salary BETWEEN 80000 AND 95000;

SELECT
    enrollment_year,
    COUNT(*) AS student_count
FROM students
GROUP BY enrollment_year;
