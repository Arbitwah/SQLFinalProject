SELECT ProgramCode,SUM(Credithours) AS TotalHours
FROM Course JOIN Students
ON Course.StudentID = Students.StudentID
WHERE Semester = 'SP/18'
GROUP BY ProgramCode;

--Unfortunately We only have one Program in our tables and that is CIS
--As far as I can tell this is what is being asked of us for Question 12 at least for what we have in our tables. 
--Check it and give feedback.
--This should equal 6 credit hours because in Spring 2018 there are only two students in one class and the class is 
--worth 3 credits.