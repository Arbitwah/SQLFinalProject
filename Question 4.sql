SELECT * 
FROM Course JOIN Administration 
ON Course.AdminID = Administration.AdminID
WHERE Title = 'Dean';