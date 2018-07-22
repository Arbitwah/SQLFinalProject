USE gp0541031;
GO

IF OBJECT_ID ('Students') IS NOT NULL
DROP TABLE Students;

IF OBJECT_ID('Faculty') IS NOT NULL
DROP TABLE Faculty;

IF OBJECT_ID('Administration') IS NOT NULL
DROP TABLE Administration;

IF OBJECT_ID('Course') IS NOT NULL
DROP TABLE Course;

If object_id('Department') IS NOT NULL
DROP table Department;

GO

-- Cleans up our Database if we run issues with normal drop. 