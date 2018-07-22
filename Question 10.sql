SELECT (SELECT COUNT(Gender)
		FROM Students JOIN Course
		ON Students.StudentID = Course.StudentID
		WHERE GENDER = 'F' AND SectionNumber = '250')AS FemaleCount,
		(SELECT COUNT(Gender)
		FROM Students JOIN Course
		ON Students.StudentID = Course.StudentID
		WHERE GENDER = 'M' AND SectionNumber = '250')AS MaleCount
From Students Join Course
ON Students.StudentID = Course.StudentID
WHERE ProgramCode = 'CIS' AND SectionNumber = '250'