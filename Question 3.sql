SELECT FirstName, LastName, CourseTitle
FROM Students JOIN Course
ON Students.StudentID = Course.StudentID
WHERE FirstName = 'Pat' AND LastName = 'Smith'