--  1. Получить всех учеников
SELECT *
FROM students;


--  2. Получить все занятия
SELECT *
FROM lessons;


--  3. Получить все записи учеников
SELECT *
FROM enrollments;


--  4. Получить учеников и занятия, на которые они записаны
SELECT
    students.name,
    lessons.subject,
    lessons.lesson_date
FROM students
JOIN enrollments
    ON students.id = enrollments.student_id
JOIN lessons
    ON enrollments.lesson_id = lessons.id;


--  5. Посчитать количество учеников на каждом занятии
SELECT
    lesson_id,
    COUNT(student_id) AS students_count
FROM enrollments
GROUP BY lesson_id;


--  6. Получить занятия конкретного преподавателя
SELECT
    id,
    subject,
    lesson_date
FROM lessons
WHERE teacher_id = 1;


--  7. Найти ученика по имени
SELECT *
FROM students
WHERE name = 'Анна';
