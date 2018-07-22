SELECT FirstName, LastName, CourseTitle
FROM Faculty JOIN Course
On Faculty.FacultyID = Course.FacultyID
WHERE Semester = 'SU/18';