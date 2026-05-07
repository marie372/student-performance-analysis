-- STUDENT PERFORMANCE ANALYSIS PROJECT
-- PostgreSQL SQL Queries


-- 1. Display first 10 records
SELECT *
FROM student_performance
LIMIT 10;


-- 2. Calculate overall average exam score
SELECT 
    AVG(examscore) AS average_exam_score
FROM student_performance;


-- 3. Top 10 best-performing students
SELECT *
FROM student_performance
ORDER BY examscore DESC
LIMIT 10;


-- 4. Attendance and exam score analysis
SELECT 
    attendance,
    examscore
FROM student_performance;


-- 5. Average score by study hours
SELECT 
    studyhours,
    AVG(examscore) AS average_score
FROM student_performance
GROUP BY studyhours
ORDER BY studyhours;


-- 6. Average score by stress level
SELECT 
    stresslevel,
    AVG(examscore) AS average_score
FROM student_performance
GROUP BY stresslevel
ORDER BY stresslevel;


-- 7. Average score by gender
SELECT 
    gender,
    AVG(examscore) AS average_score
FROM student_performance
GROUP BY gender;


-- 8. Success rate calculation
-- Students scoring 50 and above
SELECT 
    COUNT(*) FILTER (WHERE examscore >= 50) * 100.0 / COUNT(*) 
    AS success_rate
FROM student_performance;


-- 9. Attendance impact on performance
SELECT 
    attendance,
    AVG(examscore) AS average_score
FROM student_performance
GROUP BY attendance
ORDER BY attendance;


-- 10. Students with high attendance
SELECT *
FROM student_performance
WHERE attendance > 90
ORDER BY examscore DESC;


-- 11. Students with high study hours
SELECT *
FROM student_performance
WHERE studyhours >= 30
ORDER BY examscore DESC;


-- 12. Average exam score by motivation level
SELECT 
    motivation,
    AVG(examscore) AS average_score
FROM student_performance
GROUP BY motivation
ORDER BY motivation;