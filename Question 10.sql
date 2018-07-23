SELECT (SELECT COUNT(Gender)
		FROM Students JOIN Course
		ON Students.StudentID = Course.StudentID
		WHERE GENDER = 'F' AND CourseNumber = '250')AS FemaleCount,
		(SELECT COUNT(Gender)
		FROM Students JOIN Course
		ON Students.StudentID = Course.StudentID
		WHERE GENDER = 'M' AND CourseNumber = '250')AS MaleCount
From Students Join Course
ON Students.StudentID = Course.StudentID
WHERE ProgramCode = 'CIS' AND CourseNumber = '250'