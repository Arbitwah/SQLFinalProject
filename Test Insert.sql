USE gp0541031;
GO
 
INSERT INTO Students
VALUES('Gregory','Pugh','July 11,1992','M','417-239-9222',3,'MO'),
('Frankie','Barrios','February 28 1988','M','417-239-9898',3.5,'MO'),
('Pat','Smith','August 21 1998','M','417-239-9769',2.5,'MO'),
('Sandra','Bullock','February 14 1989','F','217-823-9879',3.1,'MO'),
('Patricia','Sanders','March 09 2000','F','417-539-2000',4.0,'MO')

INSERT INTO Faculty
VALUES('Tiffany','Ford','Docturate','Drury','Instructor'),
('Kathy','Buchholz','Bachaleors','Drury','Instructor'),
('Kirsten','Markley','Bachaleors','Missouri State University','Instructor'),
('Gloria','McTeer','Bachaleors','Missouri State University','Instructor'),
('Renee','Riley','Masters','Missouri State University','Instructor');


INSERT INTO Administration
VALUES('Matt','Hudson','Technical Education Division','Dean');

INSERT INTO Course
VALUES(1,3,1,3,'Mon','8:00am - 10:30am','SP/18','NKM204','130','101','Web Development','HTML','CIS'),
(2,3,1,3,'Mon','8:00am - 10:30am','SP/18','NKM204','130','101','Web Development','HTML','CIS'),
(3,5,1,4,'Tue','11:00am - 1:00pm','SU/19','NKM104','150','101','CSharp','Programming','CIS'),
(4,4,1,3,'Wen','11:00am - 1:00pm','FA/19','NKM304','100','101','Basic Computer Literacy','Programming','CIS'),
(5,1,1,3,'Tue','11:00am - 1:00pm','SU/19','NKM104','250','101','Database and Query','Programming','CIS'),
(2,5,1,3,'Tue','11:00am - 1:00pm','SU/18','NKM104','150','101','CSharp','Programming','CIS'),
(4,1,1,3,'Tue','11:00am - 1:00pm','SU/19','NKM104','250','101','Database and Query','Programming','CIS'),
(1,1,1,3,'Tue','11:00am - 1:00pm','SU/19','NKM104','250','101','Database and Query','Programming','CIS');

--While it says test this is our primary insert script.
