SELECT FirstName, LastName, SUM(CreditHours) AS TotalCreditHours
FROM Students JOIN Course
ON Students.StudentID = Course.StudentID
GROUP BY FirstName,LastName