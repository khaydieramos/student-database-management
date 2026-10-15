-- Student enrollment details (JOIN across all three tables)
SELECT s.sid, s.name, c.cname AS course, e.grade
FROM Students AS s
JOIN Enrolled AS e ON e.sid = s.sid
JOIN Courses AS c ON c.cid = e.cid
ORDER BY s.sid, c.cname;

-- Students enrolled per course
SELECT c.cid, c.cname, COUNT(e.sid) AS student_count
FROM Courses AS c
LEFT JOIN Enrolled AS e ON e.cid = c.cid
GROUP BY c.cid, c.cname
ORDER BY student_count DESC, c.cname;

-- Average GPA by course (GPA is a student-level attribute)
SELECT c.cname, ROUND(AVG(s.gpa), 2) AS average_student_gpa
FROM Courses AS c
JOIN Enrolled AS e ON e.cid = c.cid
JOIN Students AS s ON s.sid = e.sid
GROUP BY c.cid, c.cname
ORDER BY average_student_gpa DESC;

-- Enrollment count per student
SELECT s.sid, s.name, COUNT(e.cid) AS courses_taken
FROM Students AS s
LEFT JOIN Enrolled AS e ON e.sid = s.sid
GROUP BY s.sid, s.name
ORDER BY courses_taken DESC, s.sid;
