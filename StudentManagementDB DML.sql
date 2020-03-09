USE Student_Management_DB
GO
-------------------------------
--INSERT DATA------------------
-------------------------------
--EXEC sp_CreateClass 'ClassName'
EXEC sp_CreateClass 'Six'
EXEC sp_CreateClass 'Seven'
EXEC sp_CreateClass 'Eight'
EXEC sp_CreateClass 'Nine'
EXEC sp_CreateClass 'Ten'
GO

--EXEC sp_InsertTeacher 'StudentName', 'StudentPhone'
EXEC sp_InsertTeacher 'Abdul Bari', '01712365269'
EXEC sp_InsertTeacher 'Hasmat Ullah', '01712365269'
EXEC sp_InsertTeacher 'Mehedi Hasan', '01712365269'
EXEC sp_InsertTeacher 'Baharul Islam', '01712365269'
EXEC sp_InsertTeacher 'Dilip Sharma', '01712365269'
EXEC sp_InsertTeacher 'Irin Sultana', '01712365269'
EXEC sp_InsertTeacher 'Farzana Mou', '01712365269'
EXEC sp_InsertTeacher 'Amir Khosru', '01712365269'
EXEC sp_InsertTeacher 'Somsher Ali', '01712365269'
EXEC sp_InsertTeacher 'Lal Mohammad', '01712365269'
EXEC sp_InsertTeacher 'Jahangir Alom', '01712365269'
EXEC sp_InsertTeacher 'Golam Kibria', '01712365269'
GO

--EXEC sp_CreateSubjects 'SubjectName'
EXEC sp_CreateSubjects 'Bengali'
EXEC sp_CreateSubjects 'English'
EXEC sp_CreateSubjects 'Math'
EXEC sp_CreateSubjects 'Higher Math'
EXEC sp_CreateSubjects 'General Science'
EXEC sp_CreateSubjects 'Biology'
EXEC sp_CreateSubjects 'ICT'
EXEC sp_CreateSubjects 'Religion'
GO

--EXEC sp_CreateExams 'ExamType'
EXEC sp_CreateExams 'First Term'
EXEC sp_CreateExams 'Second Term'
EXEC sp_CreateExams 'Final'
GO

--EXEC sp_InsertGrades 'Grade', MinMarks, MaxMarks
EXEC sp_InsertGrades 'A+', 80, 100
EXEC sp_InsertGrades 'A', 70, 79
EXEC sp_InsertGrades 'A-', 60, 69
EXEC sp_InsertGrades 'B', 50, 59
EXEC sp_InsertGrades 'C', 40, 49
EXEC sp_InsertGrades 'D', 33, 39
EXEC sp_InsertGrades 'F', 0, 32
GO

--EXEC sp_AssignTeachers Year, ClassID, SubjectID, TeacherID
EXEC sp_AssignTeachers 2020, 1, 1, 1
EXEC sp_AssignTeachers 2020, 1, 3, 3
EXEC sp_AssignTeachers 2020, 1, 8, 9
EXEC sp_AssignTeachers 2020, 2, 1, 2
EXEC sp_AssignTeachers 2020, 2, 2, 4
EXEC sp_AssignTeachers 2020, 2, 3, 10
EXEC sp_AssignTeachers 2020, 2, 8, 9
EXEC sp_AssignTeachers 2020, 3, 1, 1
EXEC sp_AssignTeachers 2020, 3, 2, 4
EXEC sp_AssignTeachers 2020, 3, 3, 11
EXEC sp_AssignTeachers 2020, 3, 5, 12
EXEC sp_AssignTeachers 2020, 3, 7, 7
EXEC sp_AssignTeachers 2020, 4, 1, 2
EXEC sp_AssignTeachers 2020, 4, 2, 10
EXEC sp_AssignTeachers 2020, 4, 3, 5
EXEC sp_AssignTeachers 2020, 4, 4, 6
EXEC sp_AssignTeachers 2020, 4, 5, 3
EXEC sp_AssignTeachers 2020, 4, 6, 8
EXEC sp_AssignTeachers 2020, 5, 1, 12
EXEC sp_AssignTeachers 2020, 5, 2, 6
EXEC sp_AssignTeachers 2020, 5, 3, 3
EXEC sp_AssignTeachers 2020, 5, 4, 7
EXEC sp_AssignTeachers 2020, 5, 5, 9
EXEC sp_AssignTeachers 2020, 5, 6, 11
GO

--EXEC sp_InsertStudents 'Name', 'DateOfBirth', 'Phone', 'District'
EXEC sp_InsertStudents 'Abdul Khaleque', '2005-02-12', '01724526325', 'Kushtia'
EXEC sp_InsertStudents 'Erikh Jaman', '2005-02-13', '01724526325', 'Magura'
EXEC sp_InsertStudents 'Abdul Baten', '2005-02-14', '01712532647', 'Thakurgaon'
EXEC sp_InsertStudents 'Mily Rahman', '2005-02-15', '01712523652', 'Kishoreganj'
EXEC sp_InsertStudents 'Hasanuzzaman Khan', '2005-02-25', '01725632654', 'Mirpur-2'
EXEC sp_InsertStudents 'Bishwajit Kumar', '2005-02-20', '01712548569', 'Dhanmondi'
EXEC sp_InsertStudents 'Provat Kumar', '2005-02-18', '01712556256', 'Taltala'
EXEC sp_InsertStudents 'Khalid Mahmud', '2005-02-12', '01712958652', 'Farmgate'
EXEC sp_InsertStudents 'Moshtaque Shahriar', '2005-02-14', '01712995862', 'Gulisthan'
EXEC sp_InsertStudents 'Komola Begum', '2005-02-13', '01713123254', 'Narayanganj'
EXEC sp_InsertStudents 'Shahriar Kabir', '2005-02-14', '01713132526', 'Mirpur-10'
EXEC sp_InsertStudents 'Julkar Nayen', '2004-02-16', '01713141252', 'Santinagar'
EXEC sp_InsertStudents 'Komol Bishwas', '2004-02-25', '01713142523', 'Mohammadpur'
EXEC sp_InsertStudents 'Afruza Parvin', '2004-03-12', '01713254563', 'Comilla'
EXEC sp_InsertStudents 'Bulbuli Begum', '2004-03-14', '01713262542', 'Jessore'
EXEC sp_InsertStudents 'Hasna Hena', '2004-06-13', '01714254626', 'Jhinaidah'
EXEC sp_InsertStudents 'Chondro Bindu', '2004-06-14', '01714325625', 'Bogra'
EXEC sp_InsertStudents 'Keya Rahman', '2004-06-15', '01714254625', 'Rangpur'
EXEC sp_InsertStudents 'Bristy Bilash', '2004-06-12', '01714654285', 'Dinajpur'
EXEC sp_InsertStudents 'Yasin Ali', '2004-06-08', '01715859654', 'Thakurgaon'
EXEC sp_InsertStudents 'Golapi Begum', '2004-06-14', '01715985645', 'Kurigram'
EXEC sp_InsertStudents 'Purnima Dilara', '2004-07-25', '01715995865', 'Kishoreganj'
EXEC sp_InsertStudents 'Chonchol Chowdhuri', '2004-07-21', '01716256254', 'Kushtia'
EXEC sp_InsertStudents 'Sharmin Akter', '2004-09-15', '01716652452', 'Mirpur-14'
EXEC sp_InsertStudents 'Jolly Khatun', '2004-09-30', '01716985475', 'Mirpur-2'
GO

--EXEC sp_AdmitStudent StudentID, ClassID, RollNumber
EXEC sp_AdmitStudent 1, 1, 0
EXEC sp_AdmitStudent 2, 1, 0
EXEC sp_AdmitStudent 3, 1, 0
EXEC sp_AdmitStudent 4, 1, 0
EXEC sp_AdmitStudent 5, 1, 0

EXEC sp_AdmitStudent 6, 2, 0
EXEC sp_AdmitStudent 7, 2, 0
EXEC sp_AdmitStudent 8, 2, 0
EXEC sp_AdmitStudent 9, 2, 0
EXEC sp_AdmitStudent 10, 2, 0

EXEC sp_AdmitStudent 11, 3, 0
EXEC sp_AdmitStudent 12, 3, 0
EXEC sp_AdmitStudent 13, 3, 0
EXEC sp_AdmitStudent 14, 3, 0
EXEC sp_AdmitStudent 15, 3, 0

EXEC sp_AdmitStudent 16, 4, 0
EXEC sp_AdmitStudent 17, 4, 0
EXEC sp_AdmitStudent 18, 4, 0
EXEC sp_AdmitStudent 19, 4, 0
EXEC sp_AdmitStudent 20, 4, 0

EXEC sp_AdmitStudent 21, 5, 0
EXEC sp_AdmitStudent 22, 5, 0
EXEC sp_AdmitStudent 23, 5, 0
EXEC sp_AdmitStudent 24, 5, 0
EXEC sp_AdmitStudent 25, 5, 0
GO

--EXEC sp_MarksEntry AddmissionID, SubjectID, ExamTypeID, Marks
--1st Term
EXEC sp_MarksEntry 1, 1, 1, 70
EXEC sp_MarksEntry 1, 3, 1, 55
EXEC sp_MarksEntry 1, 8, 1, 45
EXEC sp_MarksEntry 2, 1, 1, 52
EXEC sp_MarksEntry 2, 3, 1, 48
EXEC sp_MarksEntry 2, 8, 1, 59
EXEC sp_MarksEntry 3, 1, 1, 65
EXEC sp_MarksEntry 3, 3, 1, 33
EXEC sp_MarksEntry 3, 8, 1, 25
EXEC sp_MarksEntry 4, 1, 1, 84
EXEC sp_MarksEntry 4, 3, 1, 99
EXEC sp_MarksEntry 4, 8, 1, 38
EXEC sp_MarksEntry 5, 1, 1, 42
EXEC sp_MarksEntry 5, 3, 1, 51
EXEC sp_MarksEntry 5, 8, 1, 61
EXEC sp_MarksEntry 6, 1, 1, 73
EXEC sp_MarksEntry 6, 2, 1, 40
EXEC sp_MarksEntry 6, 3, 1, 35
EXEC sp_MarksEntry 6, 8, 1, 68
EXEC sp_MarksEntry 7, 1, 1, 39
EXEC sp_MarksEntry 7, 2, 1, 51
EXEC sp_MarksEntry 7, 3, 1, 51
EXEC sp_MarksEntry 7, 8, 1, 36
EXEC sp_MarksEntry 8, 1, 1, 36
EXEC sp_MarksEntry 8, 2, 1, 47
EXEC sp_MarksEntry 8, 3, 1, 39
EXEC sp_MarksEntry 8, 8, 1, 38
EXEC sp_MarksEntry 9, 1, 1, 75
EXEC sp_MarksEntry 9, 2, 1, 73
EXEC sp_MarksEntry 9, 3, 1, 81
EXEC sp_MarksEntry 9, 8, 1, 78
EXEC sp_MarksEntry 10, 1, 1, 74
EXEC sp_MarksEntry 10, 2, 1, 72
EXEC sp_MarksEntry 10, 3, 1, 86
EXEC sp_MarksEntry 10, 8, 1, 81
EXEC sp_MarksEntry 11, 1, 1, 35
EXEC sp_MarksEntry 11, 2, 1, 68
EXEC sp_MarksEntry 11, 3, 1, 39
EXEC sp_MarksEntry 11, 5, 1, 51
EXEC sp_MarksEntry 11, 7, 1, 51
EXEC sp_MarksEntry 12, 1, 1, 48
EXEC sp_MarksEntry 12, 2, 1, 62
EXEC sp_MarksEntry 12, 3, 1, 38
EXEC sp_MarksEntry 12, 5, 1, 53
EXEC sp_MarksEntry 12, 7, 1, 51
EXEC sp_MarksEntry 13, 1, 1, 37
EXEC sp_MarksEntry 13, 2, 1, 68
EXEC sp_MarksEntry 13, 3, 1, 35
EXEC sp_MarksEntry 13, 5, 1, 51
EXEC sp_MarksEntry 13, 7, 1, 53
EXEC sp_MarksEntry 14, 1, 1, 37
EXEC sp_MarksEntry 14, 2, 1, 68
EXEC sp_MarksEntry 14, 3, 1, 36
EXEC sp_MarksEntry 14, 5, 1, 57
EXEC sp_MarksEntry 14, 7, 1, 51
EXEC sp_MarksEntry 15, 1, 1, 34
EXEC sp_MarksEntry 15, 2, 1, 68
EXEC sp_MarksEntry 15, 3, 1, 36
EXEC sp_MarksEntry 15, 5, 1, 57
EXEC sp_MarksEntry 15, 7, 1, 42
EXEC sp_MarksEntry 16, 1, 1, 45
EXEC sp_MarksEntry 16, 2, 1, 41
EXEC sp_MarksEntry 16, 3, 1, 58
EXEC sp_MarksEntry 16, 4, 1, 59
EXEC sp_MarksEntry 16, 5, 1, 69
EXEC sp_MarksEntry 16, 6, 1, 76
EXEC sp_MarksEntry 17, 1, 1, 49
EXEC sp_MarksEntry 17, 2, 1, 39
EXEC sp_MarksEntry 17, 3, 1, 48
EXEC sp_MarksEntry 17, 4, 1, 52
EXEC sp_MarksEntry 17, 5, 1, 68
EXEC sp_MarksEntry 17, 6, 1, 73
EXEC sp_MarksEntry 18, 1, 1, 58
EXEC sp_MarksEntry 18, 2, 1, 38
EXEC sp_MarksEntry 18, 3, 1, 49
EXEC sp_MarksEntry 18, 4, 1, 51
EXEC sp_MarksEntry 18, 5, 1, 60
EXEC sp_MarksEntry 18, 6, 1, 70
EXEC sp_MarksEntry 19, 1, 1, 42
EXEC sp_MarksEntry 19, 2, 1, 95
EXEC sp_MarksEntry 19, 3, 1, 78
EXEC sp_MarksEntry 19, 4, 1, 58
EXEC sp_MarksEntry 19, 5, 1, 38
EXEC sp_MarksEntry 19, 6, 1, 67
EXEC sp_MarksEntry 20, 1, 1, 47
EXEC sp_MarksEntry 20, 2, 1, 43
EXEC sp_MarksEntry 20, 3, 1, 48
EXEC sp_MarksEntry 20, 4, 1, 50
EXEC sp_MarksEntry 20, 5, 1, 60
EXEC sp_MarksEntry 20, 6, 1, 69
EXEC sp_MarksEntry 21, 1, 1, 49
EXEC sp_MarksEntry 21, 2, 1, 48
EXEC sp_MarksEntry 21, 3, 1, 49
EXEC sp_MarksEntry 21, 4, 1, 38
EXEC sp_MarksEntry 21, 5, 1, 64
EXEC sp_MarksEntry 21, 6, 1, 70
EXEC sp_MarksEntry 22, 1, 1, 47
EXEC sp_MarksEntry 22, 2, 1, 46
EXEC sp_MarksEntry 22, 3, 1, 44
EXEC sp_MarksEntry 22, 4, 1, 76
EXEC sp_MarksEntry 22, 5, 1, 39
EXEC sp_MarksEntry 22, 6, 1, 72
EXEC sp_MarksEntry 23, 1, 1, 47
EXEC sp_MarksEntry 23, 2, 1, 46
EXEC sp_MarksEntry 23, 3, 1, 48
EXEC sp_MarksEntry 23, 4, 1, 39
EXEC sp_MarksEntry 23, 5, 1, 76
EXEC sp_MarksEntry 23, 6, 1, 79
EXEC sp_MarksEntry 24, 1, 1, 43
EXEC sp_MarksEntry 24, 2, 1, 51
EXEC sp_MarksEntry 24, 3, 1, 95
EXEC sp_MarksEntry 24, 4, 1, 85
EXEC sp_MarksEntry 24, 5, 1, 76
EXEC sp_MarksEntry 24, 6, 1, 79
EXEC sp_MarksEntry 25, 1, 1, 49
EXEC sp_MarksEntry 25, 2, 1, 76
EXEC sp_MarksEntry 25, 3, 1, 58
EXEC sp_MarksEntry 25, 4, 1, 69
EXEC sp_MarksEntry 25, 5, 1, 95
EXEC sp_MarksEntry 25, 6, 1, 96

--2nd Term
EXEC sp_MarksEntry 1, 1, 2, 39
EXEC sp_MarksEntry 1, 3, 2, 39
EXEC sp_MarksEntry 1, 8, 2, 38
EXEC sp_MarksEntry 2, 1, 2, 72
EXEC sp_MarksEntry 2, 3, 2, 79
EXEC sp_MarksEntry 2, 8, 2, 75
EXEC sp_MarksEntry 3, 1, 2, 78
EXEC sp_MarksEntry 3, 3, 2, 83
EXEC sp_MarksEntry 3, 8, 2, 84
EXEC sp_MarksEntry 4, 1, 2, 86
EXEC sp_MarksEntry 4, 3, 2, 84
EXEC sp_MarksEntry 4, 8, 2, 65
EXEC sp_MarksEntry 5, 1, 2, 62
EXEC sp_MarksEntry 5, 3, 2, 63
EXEC sp_MarksEntry 5, 8, 2, 64
EXEC sp_MarksEntry 6, 1, 2, 67
EXEC sp_MarksEntry 6, 2, 2, 63
EXEC sp_MarksEntry 6, 3, 2, 61
EXEC sp_MarksEntry 6, 8, 2, 62
EXEC sp_MarksEntry 7, 1, 2, 63
EXEC sp_MarksEntry 7, 2, 2, 67
EXEC sp_MarksEntry 7, 3, 2, 58
EXEC sp_MarksEntry 7, 8, 2, 59
EXEC sp_MarksEntry 8, 1, 2, 47
EXEC sp_MarksEntry 8, 2, 2, 48
EXEC sp_MarksEntry 8, 3, 2, 49
EXEC sp_MarksEntry 8, 8, 2, 43
EXEC sp_MarksEntry 9, 1, 2, 87
EXEC sp_MarksEntry 9, 2, 2, 72
EXEC sp_MarksEntry 9, 3, 2, 76
EXEC sp_MarksEntry 9, 8, 2, 74
EXEC sp_MarksEntry 10, 1, 2, 73
EXEC sp_MarksEntry 10, 2, 2, 76
EXEC sp_MarksEntry 10, 3, 2, 33
EXEC sp_MarksEntry 10, 8, 2, 33
EXEC sp_MarksEntry 11, 1, 2, 39
EXEC sp_MarksEntry 11, 2, 2, 62
EXEC sp_MarksEntry 11, 3, 2, 35
EXEC sp_MarksEntry 11, 5, 2, 95
EXEC sp_MarksEntry 11, 7, 2, 59
EXEC sp_MarksEntry 12, 1, 2, 48
EXEC sp_MarksEntry 12, 2, 2, 66
EXEC sp_MarksEntry 12, 3, 2, 49
EXEC sp_MarksEntry 12, 5, 2, 76
EXEC sp_MarksEntry 12, 7, 2, 58
EXEC sp_MarksEntry 13, 1, 2, 86
EXEC sp_MarksEntry 13, 2, 2, 92
EXEC sp_MarksEntry 13, 3, 2, 93
EXEC sp_MarksEntry 13, 5, 2, 76
EXEC sp_MarksEntry 13, 7, 2, 58
EXEC sp_MarksEntry 14, 1, 2, 37
EXEC sp_MarksEntry 14, 2, 2, 68
EXEC sp_MarksEntry 14, 3, 2, 36
EXEC sp_MarksEntry 14, 5, 2, 49
EXEC sp_MarksEntry 14, 7, 2, 51
EXEC sp_MarksEntry 15, 1, 2, 34
EXEC sp_MarksEntry 15, 2, 2, 96
EXEC sp_MarksEntry 15, 3, 2, 36
EXEC sp_MarksEntry 15, 5, 2, 57
EXEC sp_MarksEntry 15, 7, 2, 42
EXEC sp_MarksEntry 16, 1, 2, 45
EXEC sp_MarksEntry 16, 2, 2, 41
EXEC sp_MarksEntry 16, 3, 2, 87
EXEC sp_MarksEntry 16, 4, 2, 59
EXEC sp_MarksEntry 16, 5, 2, 69
EXEC sp_MarksEntry 16, 6, 2, 70
EXEC sp_MarksEntry 17, 1, 2, 49
EXEC sp_MarksEntry 17, 2, 2, 39
EXEC sp_MarksEntry 17, 3, 2, 33
EXEC sp_MarksEntry 17, 4, 2, 52
EXEC sp_MarksEntry 17, 5, 2, 68
EXEC sp_MarksEntry 17, 6, 2, 39
EXEC sp_MarksEntry 18, 1, 2, 58
EXEC sp_MarksEntry 18, 2, 2, 38
EXEC sp_MarksEntry 18, 3, 2, 37
EXEC sp_MarksEntry 18, 4, 2, 51
EXEC sp_MarksEntry 18, 5, 2, 60
EXEC sp_MarksEntry 18, 6, 2, 65
EXEC sp_MarksEntry 19, 1, 2, 42
EXEC sp_MarksEntry 19, 2, 2, 95
EXEC sp_MarksEntry 19, 3, 2, 45
EXEC sp_MarksEntry 19, 4, 2, 58
EXEC sp_MarksEntry 19, 5, 2, 38
EXEC sp_MarksEntry 19, 6, 2, 67
EXEC sp_MarksEntry 20, 1, 2, 47
EXEC sp_MarksEntry 20, 2, 2, 43
EXEC sp_MarksEntry 20, 3, 2, 48
EXEC sp_MarksEntry 20, 4, 2, 41
EXEC sp_MarksEntry 20, 5, 2, 40
EXEC sp_MarksEntry 20, 6, 2, 33
EXEC sp_MarksEntry 21, 1, 2, 49
EXEC sp_MarksEntry 21, 2, 2, 48
EXEC sp_MarksEntry 21, 3, 2, 47
EXEC sp_MarksEntry 21, 4, 2, 38
EXEC sp_MarksEntry 21, 5, 2, 43
EXEC sp_MarksEntry 21, 6, 2, 70
EXEC sp_MarksEntry 22, 1, 2, 42
EXEC sp_MarksEntry 22, 2, 2, 46
EXEC sp_MarksEntry 22, 3, 2, 41
EXEC sp_MarksEntry 22, 4, 2, 76
EXEC sp_MarksEntry 22, 5, 2, 33
EXEC sp_MarksEntry 22, 6, 2, 72
EXEC sp_MarksEntry 23, 1, 2, 47
EXEC sp_MarksEntry 23, 2, 2, 46
EXEC sp_MarksEntry 23, 3, 2, 48
EXEC sp_MarksEntry 23, 4, 2, 39
EXEC sp_MarksEntry 23, 5, 2, 43
EXEC sp_MarksEntry 23, 6, 2, 79
EXEC sp_MarksEntry 24, 1, 2, 42
EXEC sp_MarksEntry 24, 2, 2, 51
EXEC sp_MarksEntry 24, 3, 2, 95
EXEC sp_MarksEntry 24, 4, 2, 47
EXEC sp_MarksEntry 24, 5, 2, 76
EXEC sp_MarksEntry 24, 6, 2, 79
EXEC sp_MarksEntry 25, 1, 2, 49
EXEC sp_MarksEntry 25, 2, 2, 76
EXEC sp_MarksEntry 25, 3, 2, 58
EXEC sp_MarksEntry 25, 4, 2, 51
EXEC sp_MarksEntry 25, 5, 2, 34
EXEC sp_MarksEntry 25, 6, 2, 33

--Final
EXEC sp_MarksEntry 1, 1, 3, 33
EXEC sp_MarksEntry 1, 3, 3, 37
EXEC sp_MarksEntry 1, 8, 3, 37
EXEC sp_MarksEntry 2, 1, 3, 35
EXEC sp_MarksEntry 2, 3, 3, 39
EXEC sp_MarksEntry 2, 8, 3, 34
EXEC sp_MarksEntry 3, 1, 3, 36
EXEC sp_MarksEntry 3, 3, 3, 35
EXEC sp_MarksEntry 3, 8, 3, 37
EXEC sp_MarksEntry 4, 1, 3, 39
EXEC sp_MarksEntry 4, 3, 3, 84
EXEC sp_MarksEntry 4, 8, 3, 93
EXEC sp_MarksEntry 5, 1, 3, 97
EXEC sp_MarksEntry 5, 3, 3, 94
EXEC sp_MarksEntry 5, 8, 3, 85
EXEC sp_MarksEntry 6, 1, 3, 76
EXEC sp_MarksEntry 6, 2, 3, 74
EXEC sp_MarksEntry 6, 3, 3, 76
EXEC sp_MarksEntry 6, 8, 3, 96
EXEC sp_MarksEntry 7, 1, 3, 82
EXEC sp_MarksEntry 7, 2, 3, 74
EXEC sp_MarksEntry 7, 3, 3, 76
EXEC sp_MarksEntry 7, 8, 3, 73
EXEC sp_MarksEntry 8, 1, 3, 71
EXEC sp_MarksEntry 8, 2, 3, 70
EXEC sp_MarksEntry 8, 3, 3, 80
EXEC sp_MarksEntry 8, 8, 3, 71
EXEC sp_MarksEntry 9, 1, 3, 62
EXEC sp_MarksEntry 9, 2, 3, 54
EXEC sp_MarksEntry 9, 3, 3, 59
EXEC sp_MarksEntry 9, 8, 3, 61
EXEC sp_MarksEntry 10, 1, 3, 63
EXEC sp_MarksEntry 10, 2, 3, 67
EXEC sp_MarksEntry 10, 3, 3, 95
EXEC sp_MarksEntry 10, 8, 3, 75
EXEC sp_MarksEntry 11, 1, 3, 39
EXEC sp_MarksEntry 11, 2, 3, 48
EXEC sp_MarksEntry 11, 3, 3, 35
EXEC sp_MarksEntry 11, 5, 3, 33
EXEC sp_MarksEntry 11, 7, 3, 59
EXEC sp_MarksEntry 12, 1, 3, 49
EXEC sp_MarksEntry 12, 2, 3, 66
EXEC sp_MarksEntry 12, 3, 3, 85
EXEC sp_MarksEntry 12, 5, 3, 76
EXEC sp_MarksEntry 12, 7, 3, 33
EXEC sp_MarksEntry 13, 1, 3, 86
EXEC sp_MarksEntry 13, 2, 3, 34
EXEC sp_MarksEntry 13, 3, 3, 33
EXEC sp_MarksEntry 13, 5, 3, 76
EXEC sp_MarksEntry 13, 7, 3, 58
EXEC sp_MarksEntry 14, 1, 3, 86
EXEC sp_MarksEntry 14, 2, 3, 68
EXEC sp_MarksEntry 14, 3, 3, 36
EXEC sp_MarksEntry 14, 5, 3, 49
EXEC sp_MarksEntry 14, 7, 3, 51
EXEC sp_MarksEntry 15, 1, 3, 37
EXEC sp_MarksEntry 15, 2, 3, 39
EXEC sp_MarksEntry 15, 3, 3, 36
EXEC sp_MarksEntry 15, 5, 3, 57
EXEC sp_MarksEntry 15, 7, 3, 42
EXEC sp_MarksEntry 16, 1, 3, 45
EXEC sp_MarksEntry 16, 2, 3, 49
EXEC sp_MarksEntry 16, 3, 3, 87
EXEC sp_MarksEntry 16, 4, 3, 59
EXEC sp_MarksEntry 16, 5, 3, 85
EXEC sp_MarksEntry 16, 6, 3, 70
EXEC sp_MarksEntry 17, 1, 3, 47
EXEC sp_MarksEntry 17, 2, 3, 39
EXEC sp_MarksEntry 17, 3, 3, 49
EXEC sp_MarksEntry 17, 4, 3, 52
EXEC sp_MarksEntry 17, 5, 3, 67
EXEC sp_MarksEntry 17, 6, 3, 39
EXEC sp_MarksEntry 18, 1, 3, 67
EXEC sp_MarksEntry 18, 2, 3, 38
EXEC sp_MarksEntry 18, 3, 3, 59
EXEC sp_MarksEntry 18, 4, 3, 51
EXEC sp_MarksEntry 18, 5, 3, 60
EXEC sp_MarksEntry 18, 6, 3, 54
EXEC sp_MarksEntry 19, 1, 3, 42
EXEC sp_MarksEntry 19, 2, 3, 35
EXEC sp_MarksEntry 19, 3, 3, 51
EXEC sp_MarksEntry 19, 4, 3, 58
EXEC sp_MarksEntry 19, 5, 3, 39
EXEC sp_MarksEntry 19, 6, 3, 67
EXEC sp_MarksEntry 20, 1, 3, 47
EXEC sp_MarksEntry 20, 2, 3, 49
EXEC sp_MarksEntry 20, 3, 3, 48
EXEC sp_MarksEntry 20, 4, 3, 41
EXEC sp_MarksEntry 20, 5, 3, 95
EXEC sp_MarksEntry 20, 6, 3, 33
EXEC sp_MarksEntry 21, 1, 3, 49
EXEC sp_MarksEntry 21, 2, 3, 48
EXEC sp_MarksEntry 21, 3, 3, 47
EXEC sp_MarksEntry 21, 4, 3, 56
EXEC sp_MarksEntry 21, 5, 3, 43
EXEC sp_MarksEntry 21, 6, 3, 49
EXEC sp_MarksEntry 22, 1, 3, 42
EXEC sp_MarksEntry 22, 2, 3, 46
EXEC sp_MarksEntry 22, 3, 3, 47
EXEC sp_MarksEntry 22, 4, 3, 76
EXEC sp_MarksEntry 22, 5, 3, 33
EXEC sp_MarksEntry 22, 6, 3, 96
EXEC sp_MarksEntry 23, 1, 3, 47
EXEC sp_MarksEntry 23, 2, 3, 46
EXEC sp_MarksEntry 23, 3, 3, 35
EXEC sp_MarksEntry 23, 4, 3, 39
EXEC sp_MarksEntry 23, 5, 3, 43
EXEC sp_MarksEntry 23, 6, 3, 45
EXEC sp_MarksEntry 24, 1, 3, 42
EXEC sp_MarksEntry 24, 2, 3, 51
EXEC sp_MarksEntry 24, 3, 3, 33
EXEC sp_MarksEntry 24, 4, 3, 47
EXEC sp_MarksEntry 24, 5, 3, 76
EXEC sp_MarksEntry 24, 6, 3, 47
EXEC sp_MarksEntry 25, 1, 3, 49
EXEC sp_MarksEntry 25, 2, 3, 76
EXEC sp_MarksEntry 25, 3, 3, 47
EXEC sp_MarksEntry 25, 4, 3, 51
EXEC sp_MarksEntry 25, 5, 3, 34
EXEC sp_MarksEntry 25, 6, 3, 49
GO

--Select All Tables and Views
SELECT * FROM tbl_Class
SELECT * FROM tbl_Subject
SELECT * FROM tbl_Grade
SELECT * FROM tbl_ExamType
SELECT * FROM tbl_Student
SELECT * FROM tbl_Teacher
SELECT * FROM tbl_AssignTeacher
SELECT * FROM tbl_MarksEntry
SELECT * FROM tbl_Addmission
SELECT * FROM tbl_Audit
GO

--Update Teachers
--EXEC sp_updateTeacher AssignTeacherID, Year, ClassID, SubjectID, TeacherID
EXEC sp_updateTeacher 1, 2020, 1, 1, 3
GO

--Update Some Marks from tbl_MarksEntry Table
--EXEC sp_updateMarks MarksEntryID, AdmissionID, SubjectID, ExamTypeID, Marks
EXEC sp_updateMarks 1, 1, 1, 1, 75
EXEC sp_updateMarks 2, 1, 3, 1, 50
EXEC sp_updateMarks 3, 1, 8, 1, 65
GO

--Retrive the data using Views
SELECT * FROM vw_StudentByClass
SELECT * FROM vw_TeacherByClass
SELECT * FROM vw_MarksByStudents
GO

--Select Top 3 Students by ClassName and ExamTypeID (1st Term=1, 2nd Term=2, Final=3)
--SELECT * FROM dbo.fn_top3FromClasses('ClassName', ExamTypeID)
SELECT * FROM dbo.fn_top3FromClasses('Seven', 1)
GO

--Search total student number in a class
--SELECT dbo.fn_totalStudent(ClassID) AS TotalStudent
SELECT dbo.fn_totalStudent(2) AS TotalStudent
GO

--Select Students Grade By Class Name
--EXEC sp_ViewGradePointByClass 'ClassName' (Six/Seven/Eight/Nine/Ten)
EXEC sp_ViewGradePointByClass 'Six'
GO

--Select an specific Student Grades
--EXEC sp_ViewAStudentGrade 'ClassName', RollNumber
EXEC sp_ViewAStudentGrade 'Eight', 2
GO

--Check Index
EXEC sp_helpindex tbl_Audit
GO


--Audit Records
SELECT * FROM vw_StudentMarksUpdate