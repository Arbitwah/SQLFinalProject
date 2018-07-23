SELECT DISTINCT CourseTitle, CourseNumber,SectionNumber, ProgramCode
FROM Course
WHERE DaysOffered = 'Mon' AND Semester = 'SP/18'

--Went with Distinct so that it returned classes only and not amount of students that were taking the class. 