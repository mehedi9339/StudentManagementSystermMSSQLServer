USE MASTER
GO

IF DB_ID('Student_Management_DB') IS NOT NULL
	DROP DATABASE Student_Management_DB
GO

CREATE DATABASE Student_Management_DB
GO

USE Student_Management_DB
GO



-------------------------------------------------
--CREATE TABLES----------------------------------
-------------------------------------------------
CREATE TABLE tbl_Class(
	ClassID			INT			IDENTITY NOT NULL,
	ClassName		VARCHAR(20)	NOT NULL
	CONSTRAINT PK_Class PRIMARY KEY(ClassID)
)
GO

CREATE TABLE tbl_Teacher(
	TeacherID		INT			IDENTITY NOT NULL,
	TeacherName		VARCHAR(50) NOT NULL,
	TPhone			VARCHAR(11)	NULL
	CONSTRAINT PK_TeacherID PRIMARY KEY(TeacherID)
)
GO

CREATE TABLE tbl_Subject(
	SubjectID		INT			IDENTITY NOT NULL,
	SubjectName		VARCHAR(30)	NOT NULL,
	CONSTRAINT PK_Course PRIMARY KEY(SubjectID)
)
GO

CREATE TABLE tbl_ExamType(
	ExamTypeID		INT			IDENTITY NOT NULL,
	ExamName		VARCHAR(15)	NOT NULL,
	CONSTRAINT PK_ExamTypeID PRIMARY KEY(ExamTypeID)
)
GO

CREATE TABLE tbl_Grade(
	GradeID			INT			IDENTITY NOT NULL,
	GradeName		VARCHAR(5)	NOT NULL,
	MinimumMarks	INT			NOT NULL,
	MaximumMarks	INT			NOT NULL,
	CONSTRAINT PK_Grade PRIMARY KEY(GradeID)
)
GO

CREATE TABLE tbl_AssignTeacher(
	AssignTeacherID		INT			IDENTITY NOT NULL,
	[YEAR]				INT			NOT NULL,
	ClassID				INT			NOT NULL,
	SubjectID			INT			NOT NULL,
	TeacherID			INT			NOT NULL,
	CONSTRAINT PK_CourseOffer PRIMARY KEY(AssignTeacherID),
	CONSTRAINT FK_CourseOffer_ClassID FOREIGN KEY(ClassID) REFERENCES tbl_Class(ClassID),
	CONSTRAINT FK_CourseOffer_SubjectID FOREIGN KEY(SubjectID) REFERENCES tbl_Subject(SubjectID),
	CONSTRAINT FK_CourseOffer_TeacherID FOREIGN KEY(TeacherID) REFERENCES tbl_Teacher(TeacherID)
)
GO

CREATE TABLE tbl_Student(
	StudentID		INT				IDENTITY NOT NULL,
	[Name]			VARCHAR(50)		NOT NULL,
	DateOfBirth		DATE			NULL,
	SPhone			VARCHAR(11)		NULL,
	StAddress		VARCHAR(100)	NULL
	CONSTRAINT PK_Student PRIMARY KEY(StudentID)
)
GO

CREATE TABLE tbl_Addmission(
	AddmissionID	INT			IDENTITY NOT NULL,
	StudentID		INT			NOT NULL,
	ClassID			INT			NOT NULL,
	RollNumber		INT			NOT NULL,
	AddmissionDate	DATE		DEFAULT(GETDATE()),
	CONSTRAINT PK_AddmissionID PRIMARY KEY(AddmissionID),
	CONSTRAINT FK_Addmission_Student FOREIGN KEY(StudentID) REFERENCES tbl_Student(StudentID),
	CONSTRAINT FK_Addmission_Class FOREIGN KEY(ClassID) REFERENCES tbl_Class(ClassID)
)
GO

CREATE TABLE tbl_MarksEntry(
	MarksEntryID		INT			IDENTITY NOT NULL,
	AddmissionID		INT			NOT NULL,
	SubjectID			INT			NOT NULL,
	ExamTypeID			INT			NOT NULL,
	Marks				INT			NOT NULL CHECK(Marks>=0 and Marks <=100),
	EntryDate			DATE		NOT NULL DEFAULT(GETDATE()),
	CONSTRAINT PK_MarksEntry PRIMARY KEY(MarksEntryID, AddmissionID),
	CONSTRAINT FK_MarksEntry_AddmissionID FOREIGN KEY(AddmissionID) REFERENCES tbl_Addmission(AddmissionID),
	CONSTRAINT FK_MarksEntry_SubjectID FOREIGN KEY(SubjectID) REFERENCES tbl_Subject(SubjectID),
	CONSTRAINT FK_MarksEntry_ExamTypeID FOREIGN KEY(ExamTypeID) REFERENCES tbl_ExamType(ExamTypeID),
	CONSTRAINT CHK_Marks CHECK(Marks >= 0 AND Marks <= 100)
)
GO

CREATE TABLE tbl_Audit(
	ID					INT				IDENTITY NOT NULL,
	AddmissionID		INT				NOT NULL,
	SubjectID			INT				NOT NULL,
	ExamTypeID			INT				NOT NULL,
	Marks				INT				NOT NULL,
	NewMarks			INT				NULL,
	[Action]			VARCHAR(15)		NOT NULL,
	[Date]				DATETIME		NOT NULL DEFAULT(GETDATE())
)
GO



----------------------------------------
--INDEX---------------------------------
----------------------------------------
CREATE NONCLUSTERED INDEX ix_auditNonCID
ON tbl_Audit(Marks)
GO

CREATE CLUSTERED INDEX ix_auditCID
ON tbl_Audit(ID)
GO


----------------------------------------
--CREATE PROCEDURE----------------------
----------------------------------------
--Procedure for Creating Class
CREATE PROCEDURE sp_CreateClass
@cName VARCHAR(20)
AS
BEGIN
	INSERT tbl_Class(ClassName) VALUES (@cName)
END
GO

--Procedure for Adding Teachers
CREATE PROC sp_InsertTeacher
@tName VARCHAR(50), @tPhone VARCHAR(11)
AS
BEGIN
	INSERT tbl_Teacher(TeacherName, TPhone) VALUES(@tName, @tPhone)
END
GO

--Procedure for Creating Subjects
CREATE PROC sp_CreateSubjects
@sName VARCHAR(30)
AS
BEGIN
	INSERT tbl_Subject(SubjectName) VALUES(@sName)
END
GO

--Procedure for Creating Exam Types
CREATE PROC sp_CreateExams
@eName VARCHAR(15)
AS
BEGIN
	INSERT tbl_ExamType(ExamName) VALUES(@eName)
END
GO

--Procedure for Creating Grades
CREATE PROCEDURE sp_InsertGrades
@gName VARCHAR(5), @MinMarks INT, @MaxMarks INT
AS
BEGIN
	INSERT tbl_Grade(GradeName, MinimumMarks, MaximumMarks) VALUES(@gName, @MinMarks, @MaxMarks)
END
GO

--Procedure for Assign Teachers
CREATE PROCEDURE sp_AssignTeachers
@year INT, @classID INT, @subjectID INT, @teacherID INT
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM tbl_Class WHERE ClassID=@classID)
	BEGIN
		RAISERROR('Class is not found in system. Please add class first.', 16, 1)
	END
	IF NOT EXISTS (SELECT * FROM tbl_Subject WHERE SubjectID=@subjectID)
	BEGIN
		RAISERROR('Subject is not found in system. Please add subject first.', 16, 1)
	END
	IF NOT EXISTS (SELECT * FROM tbl_Teacher WHERE TeacherID=@teacherID)
	BEGIN
		RAISERROR('Teacher is not found in system. Please add teacher first.', 16, 1)
	END
	
	BEGIN TRY
		BEGIN TRAN
			INSERT tbl_AssignTeacher([YEAR], ClassID, SubjectID, TeacherID) VALUES(@year, @classID, @subjectID, @teacherID)
		COMMIT TRAN
	END TRY

	BEGIN CATCH
		PRINT 'Error occured for : ' + ERROR_MESSAGE()
		ROLLBACK TRAN
	END CATCH
END
GO

--Procedure for Adding Students
CREATE PROC sp_InsertStudents
@sName VARCHAR(50), @DOB DATE, @sPhone VARCHAR(11), @sAddress VARCHAR(100)
AS
BEGIN
	INSERT tbl_Student([Name], DateOfBirth, SPhone, StAddress) VALUES(@sName, @DOB, @sPhone, @sAddress)
END
GO

--Procedure for Admit Students
CREATE PROC sp_AdmitStudent
@studentID INT, @classID INT, @rollNo INT
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM tbl_Student WHERE StudentID=@studentID)
	BEGIN
		RAISERROR('Student is not found in the system. Please add student first', 16, 1)
	END
	IF NOT EXISTS(SELECT * FROM tbl_Class WHERE ClassID=@classID)
	BEGIN
		RAISERROR('Class is not found in the system. Please add class first', 16, 1)
	END

	BEGIN TRY
		BEGIN TRAN
			IF @rollNo IS NULL OR @rollNo = 0
			BEGIN
				SELECT @rollNo = ISNULL(MAX(RollNumber), 0) + 1 FROM tbl_Addmission
				WHERE ClassID=@classID
			END
			INSERT tbl_Addmission(StudentID, ClassID, RollNumber, AddmissionDate)
			VALUES(@studentID, @classID, @rollNo, GETDATE())
		COMMIT TRAN
	END TRY

	BEGIN CATCH
		PRINT 'Error occured for : ' + ERROR_MESSAGE()
		ROLLBACK TRANSACTION
	END CATCH
END
GO

--Procedure for Marks Entry
CREATE PROCEDURE sp_MarksEntry
@addmissionID INT, @subjectID INT, @examTypeID INT, @marks INT
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM tbl_Addmission WHERE AddmissionID=@addmissionID)
	BEGIN
		RAISERROR('Student is not found in the system. Please add student first', 16, 1)
	END
	IF NOT EXISTS(SELECT * FROM tbl_Subject WHERE SubjectID=@subjectID)
	BEGIN
		RAISERROR('Subject is not found in the system. Please add subject first', 16, 1)
	END
	IF NOT EXISTS(SELECT * FROM tbl_ExamType WHERE ExamTypeID=@examTypeID)
	BEGIN
		RAISERROR('There is no exam like this. Please re-check it.', 16, 1)
	END

	BEGIN TRY
		BEGIN TRAN
			INSERT tbl_MarksEntry(AddmissionID, SubjectID, ExamTypeID, Marks) VALUES(@addmissionID, @subjectID, @examTypeID, @marks)
		COMMIT TRAN
	END TRY

	BEGIN CATCH
		PRINT 'Error occured for : '+ ERROR_MESSAGE()
		ROLLBACK TRAN
	END CATCH
END
GO

--Procedure to View Student By Grade
CREATE PROC sp_ViewGradePointByClass
@class VARCHAR(20)
AS
BEGIN
	SELECT ClassName, RollNumber, [Name], SubjectName, AVG(Marks) AverageMarks,
	(
		SELECT GradeName FROM tbl_Grade
		WHERE AVG(Marks) BETWEEN MinimumMarks AND MaximumMarks
	) Grade
	FROM tbl_Addmission ad
	INNER JOIN tbl_MarksEntry mrk
	ON ad.AddmissionID=mrk.AddmissionID
	INNER JOIN tbl_Class cl
	ON cl.ClassID=ad.ClassID
	INNER JOIN tbl_Student st
	ON st.StudentID=ad.StudentID
	INNER JOIN tbl_Subject su
	ON su.SubjectID=mrk.SubjectID
	INNER JOIN tbl_ExamType ex
	ON ex.ExamTypeID=mrk.ExamTypeID
	WHERE ClassName = @class
	GROUP BY ClassName, RollNumber, [Name], SubjectName
END
GO

--Procedure to View A Student Grade
CREATE PROC sp_ViewAStudentGrade
@class VARCHAR(20), @roll int
AS
BEGIN
	SELECT ClassName, RollNumber, [Name], SubjectName, AVG(Marks) AverageMarks,
	(
		SELECT GradeName FROM tbl_Grade
		WHERE AVG(Marks) BETWEEN MinimumMarks AND MaximumMarks
	) Grade
	FROM tbl_Addmission ad
	INNER JOIN tbl_MarksEntry mrk
	ON ad.AddmissionID=mrk.AddmissionID
	INNER JOIN tbl_Class cl
	ON cl.ClassID=ad.ClassID
	INNER JOIN tbl_Student st
	ON st.StudentID=ad.StudentID
	INNER JOIN tbl_Subject su
	ON su.SubjectID=mrk.SubjectID
	INNER JOIN tbl_ExamType ex
	ON ex.ExamTypeID=mrk.ExamTypeID
	WHERE ClassName = @class and RollNumber=@roll
	GROUP BY ClassName, RollNumber, [Name], SubjectName
END
GO



----------------------------------------------------------
--Update Procedure----------------------------------------
----------------------------------------------------------
--Update Teachers By Class And Subject
CREATE PROC sp_updateTeacher
@id int, @year int, @classID int, @subID int, @teacherID int
AS
BEGIN
	UPDATE tbl_AssignTeacher
	SET [YEAR]=@year, ClassID=@classID, SubjectID=@subID, TeacherID=@teacherID
	WHERE AssignTeacherID=@id
END
GO

--Update Student Marks
CREATE PROC sp_updateMarks
@id int, @adID int, @subID int, @examID int, @marks int
AS
BEGIN
	UPDATE tbl_MarksEntry
	SET AddmissionID=@adID, SubjectID=@subID, ExamTypeID=@examID, Marks=@marks
	WHERE MarksEntryID=@id
END
GO
------------------------------------
--VIEWS-----------------------------
------------------------------------
--Select Student By Class
CREATE VIEW vw_StudentByClass
AS
SELECT cl.ClassName [Class Name],
		st.StudentID [Student ID],
		ad.RollNumber [Roll Number],
		st.[Name] [Student Name],
		st.DateOfBirth [Date of Birth],
		st.SPhone [Student Phone],
		st.StAddress [Student Address],
		ad.AddmissionDate [Addmission Date]
FROM tbl_Class cl
INNER JOIN tbl_Addmission ad
ON cl.ClassID=ad.ClassID
INNER JOIN tbl_Student st
ON st.StudentID=ad.StudentID
GO

--Select Teachers By Class
CREATE VIEW vw_TeacherByClass
AS
SELECT  ass.[YEAR] [Year],
		cl.ClassName [Class Name],
		su.SubjectName [Subject Name],
		te.TeacherName [Teacher Name],
		te.TPhone [Teacher Phone]
FROM tbl_Class cl
INNER JOIN tbl_AssignTeacher ass
ON cl.ClassID=ass.ClassID
INNER JOIN tbl_Subject su
ON su.SubjectID=ass.SubjectID
INNER JOIN tbl_Teacher te
ON te.TeacherID=ass.TeacherID
GO

--View Marks By Students
CREATE VIEW vw_MarksByStudents
AS
SELECT ExamName, ClassName, RollNumber, [Name], SubjectName, Marks
FROM tbl_Addmission ad
INNER JOIN tbl_MarksEntry mrk
ON ad.AddmissionID=mrk.AddmissionID
INNER JOIN tbl_Class cl
ON cl.ClassID=ad.ClassID
INNER JOIN tbl_Student st
ON st.StudentID=ad.StudentID
INNER JOIN tbl_Subject su
ON su.SubjectID=mrk.SubjectID
INNER JOIN tbl_ExamType ex
ON ex.ExamTypeID=mrk.ExamTypeID
GO

CREATE VIEW vw_StudentMarksUpdate
AS
SELECT *
FROM tbl_Audit
WHERE [Action] = 'Updated'
GO



------------------------------------
--FUNCTIONS--------------------------
------------------------------------
CREATE FUNCTION fn_totalStudent(@classID int)
RETURNS INT
AS
BEGIN
	SELECT @classID = ClassID FROM tbl_Addmission
	RETURN
	(
		SELECT COUNT(StudentID)
		FROM tbl_Addmission
		WHERE classID=@classID
	)
END
GO

--Table Valued Function To Find Top 3 Student By ClassName and ExamTypeID
CREATE FUNCTION fn_top3FromClasses(@class varchar(20),@exam varchar(15))
RETURNS TABLE
AS
RETURN
	SELECT TOP 3 RollNumber, [Name], SUM(Marks) AS TotalMarks
	FROM tbl_Addmission ad
	INNER JOIN tbl_MarksEntry mrk
	ON ad.AddmissionID=mrk.AddmissionID
	INNER JOIN tbl_Class cl
	ON cl.ClassID=ad.ClassID
	INNER JOIN tbl_Student st
	ON st.StudentID=ad.StudentID
	INNER JOIN tbl_ExamType ex
	ON ex.ExamTypeID=mrk.ExamTypeID
	WHERE ClassName = @class and ex.ExamTypeID=@exam
	GROUP BY RollNumber, [Name]
	ORDER BY TotalMarks DESC
GO



----------------------------------------------
--TRIGGERS------------------------------------
----------------------------------------------
CREATE TRIGGER tr_MarksAuditInsert
ON tbl_MarksEntry
AFTER INSERT
AS
BEGIN
	DECLARE @addID INT, @subID INT, @examID INT, @marks INT
	SELECT @addID=AddmissionID,@subID=SubjectID,@examID=ExamTypeID,@marks=Marks FROM inserted
	INSERT INTO tbl_Audit(AddmissionID, SubjectID, ExamTypeID, Marks, [Action])
	VALUES(@addID, @subID, @examID, @marks, 'Inserted')
	PRINT 'Successfully inserted Records in tbl_Audit table for further enquery.'
END
GO

CREATE TRIGGER tr_MarksAuditUpdate
ON tbl_MarksEntry
AFTER UPDATE
AS
BEGIN
	DECLARE @addID INT, @subID INT, @examID INT, @marks INT, @newMarks int
	SELECT @addID=AddmissionID,@subID=SubjectID,@examID=ExamTypeID,@marks=Marks FROM deleted
	SELECT @newMarks=Marks from inserted
	INSERT INTO tbl_Audit(AddmissionID, SubjectID, ExamTypeID, Marks, NewMarks, [Action])
	VALUES(@addID, @subID, @examID, @marks, @newMarks, 'Updated')
	PRINT 'Successfully inserted Records in tbl_Audit table for further enquery.'
END
GO