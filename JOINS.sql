-- Courses and trainers join
SELECT courses.title,trainers.first_Name,trainers.last_name FROM courses JOIN courses_trainers ON courses.idcourse=courses_trainers.idcourses JOIN trainers ON trainers.idtrainer=courses_trainers.idtrainers;

-- Students and Courses join
SELECT students.first_name,students.last_name,courses.title FROM students JOIN courses_students ON students.idstudents=courses_students.idstudents JOIN courses ON courses.idcourse=courses_students.idcourses;

-- Assignments and Courses join
SELECT assignments.title,assignments.description,courses.title FROM assignments JOIN courses_assignments ON assignments.idassignments=courses_assignments.idassignments JOIN courses ON courses.idcourse=courses_assignments.idcourses;

-- Students and Assignments join
SELECT students.first_name,students.last_name,assignments.title,students_assignments.sub_date_time FROM students JOIN students_assignments ON students.idstudents=students_assignments.idstudents JOIN assignments ON assignments.idassignments=students_assignments.idassignments;
