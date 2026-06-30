SELECT
    department_id,
    AVG(salary) AS avg_salary
FROM professors
GROUP BY department_id
HAVING AVG(salary) > 85000;

CREATE VIEW vw_student_enrollment_summary AS
SELECT
    s.student_id,
    CONCAT(s.first_name,' ',s.last_name) AS student_name,
    d.dept_name,
    COUNT(e.course_id) AS total_courses
FROM students s
LEFT JOIN departments d ON s.department_id=d.department_id
LEFT JOIN enrollments e ON s.student_id=e.student_id
GROUP BY s.student_id, student_name, d.dept_name;

SELECT * FROM vw_student_enrollment_summary;

START TRANSACTION;

UPDATE students
SET enrollment_year = 2024
WHERE student_id = 1;

COMMIT;

SELECT * FROM students WHERE student_id = 1;
