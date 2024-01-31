CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name varchar(50),
    middle_name varchar(50),
    last_name varchar(50),
    age integer,
    location varchar(100),
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES 
(1, 'Juan', null, 'Cruz', 18, 'Manila'),
(2, 'Anne', null, 'Wall', 20, 'Manila'),
(3, 'Theresa', null, 'Joseph', 21, 'Manila'),
(4, 'Isaac', null, 'Gray', 19, 'Laguna'),
(5, 'Zack', null, 'Matthews', 22, 'Marikina'),
(6, 'Finn', null, 'Lam', 25, 'Manila');

UPDATE students SET first_name = 'Ivan', middle_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(id) FROM students;

SELECT * FROM studets WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;

CREATE TABLE classrooms (
    id integer PRIMARY KEY,
    section varchar(1),
    student_id INTEGER,
    FOREIGN KEY (student_id)
    REFERENCES students(id)
)

INSERT INTO classrooms (id, student_id, section)
VALUES
(1, 1, 'A'),
(2, 2, 'A'),
(3, 4, 'B'),
(4, 4, 'C'),
(5, 5, 'B'),
(6, 6, 'A'),
(7, 7, 'C'),
(8, 8, 'B'),
(9, 9, 'B'),
(10, 10, 'C');

-- shows the coreresponding students in each students

SELECT students.id, classrooms.section FROM studednts 
INNER JOIN classrooms 
ON students.id = classrooms.student_id
GROUP BY classroooms.section ASC;

-- shows students who don't have sections

SELECT students.id, classrooms.section FROM students
LEFT JOIN classrooms
ON students.id = classrooms.student_id
HAVING classrooms.section = null;

-- shows the number of students in each section

SELECT COUNT(students.id), classrooms.section FROM students
RIGHT JOIN classrooms
ON students.id = classrooms.student_id
GROUP BY classrooms.section ASC;

-- shows the whole table of classrooms and section 
SELECT students.id, students.last_name, students.first_name, classrooms.section FROM students
FULL JOIN classrooms
ON students.id = classrooms.student_id;

--enum

CREATE TYPE grade_research_paper AS ENUM ('A', 'B', 'C', 'D', 'E', 'F', NULL);

CREATE TABLE research_papers (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    grade GRADE_RESEARCH_PAPER,
    --check constraint
    --grade TEXT CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL))
    FOREIGN KEY (student_id)
    REFERENCES students(id)
);

INSERT INTO research_papers (id, student_id, grade)
VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'C'),
(4, 4, 'D'),
(5, 5, 'E'),
(6, 2, 'F'),
(7, 7, NULL),
(8, 8, 'A'),
(9, 5, 'B'),
(10, 5, NULL);

SELECT students.first_name, students.last_name COUNT(research_papers.student_id) AS number_of_research_papers FROM students
INNER JOIN research_papers
ON students.id = research_papers.student_id
GROUP BY students.first_name, students.last_name
HAVING COUNT(research_papers.id) > 1;

SELECT students.first_name, students.last_name, research_papers.id, research_papers.grade FROM students
RIGHT JOIN research_papers
ON student.id = research_papers.student_id
WHERE research_papers.grade IS NULL;