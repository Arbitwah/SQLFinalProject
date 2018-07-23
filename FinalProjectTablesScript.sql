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

GO

USE gp0541031;
 
 CREATE TABLE Students(
 StudentID INT NOT NULL PRIMARY KEY IDENTITY,
 FirstName VARCHAR(20) NOT NULL,
 LastName VARCHAR(20) NOT NULL,
 BirthDate DATE NOT NULL DEFAULT '1/1/1901',
 Gender VARCHAR(1) NOT NULL , 
 PhoneNumber VARCHAR(12) NOT NULL,
 GPA DECIMAL NOT NULL,
 State VARCHAR(2) NOT NULL, 
 CONSTRAINT CK_StateAbbr CHECK (State LIKE '[A-Z][A-Z]'),
 CONSTRAINT CK_MaleFemale CHECK (Gender = 'M' OR Gender = 'F'),
 CONSTRAINT CK_PhoneNumber CHECK (PhoneNumber LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'));
 
 CREATE TABLE Faculty(
 FacultyID INT NOT NULL PRIMARY KEY IDENTITY,
 FirstName VARCHAR(20) NOT NULL,
 LastName VARCHAR(20) NOT NULL,
 HeldDegree VARCHAR(40) NOT NULL,
 SchoolAttended VARCHAR(50) NOT NULL,
 Title VARCHAR(21) NOT NULL);
 
 CREATE TABLE Administration(
 AdminID INT NOT NULL PRIMARY KEY IDENTITY,
 FirstName VARCHAR(20) NOT NULL,
 LastName VARCHAR(20) NOT NULL,
 Division VARCHAR(30) NOT NULL,
 Title VARCHAR(21) NOT NULL);
 
 CREATE TABLE Course(
 CourseID INT NOT NULL PRIMARY KEY IDENTITY,
 StudentID INT NOT NULL REFERENCES Students(StudentID),
 FacultyID INT NOT NULL REFERENCES Faculty(FacultyID),
 AdminID INT NOT NULL REFERENCES Administration(AdminID),
 CreditHours INT NOT NULL CHECK (CreditHours >= 0),
 DaysOffered VARCHAR(6) NOT NULL,
 Time VARCHAR(19) NOT NULL,
 Semester VARCHAR(6) NOT NULL,
 RoomNumber VARCHAR(10) NOT NULL,
 CourseNumber VARCHAR(4) NOT NULL,
 SectionNumber VARCHAR(4) NOT NULL,
 CourseTitle VARCHAR(30) NOT NULL,
 Subject VARCHAR(30) NOT NULL,
 ProgramCode VARCHAR(3) NOT NUll,
 CONSTRAINT CK_ProgramCd CHECK (ProgramCode LIKE '[A-Z][A-Z][A-Z]'),
 CONSTRAINT CK_CreditHours CHECK (CreditHours >= 0));

 CREATE INDEX IX_StudentLastName ON Students(LastName);
 CREATE INDEX IX_StudentHomePhone ON Students(PhoneNumber);


