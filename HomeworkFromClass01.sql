--create database SEDCACADEMYDB

create table dbo.Student
(
	[Id] int identity(1,1) not null,
	[FirstName] nvarchar(100) not null,
	[LastName] nvarchar(100) not null,
	[DateOfBirth] date null,
	[Enrolleddate] date null,
	[Gender] nchar(1) null,
	[NationalIDNumber] nvarchar(20) null,
	[StudentCardNumber] nvarchar(16) null,
	constraint [PK_Student] primary key clustered (Id)
)
select *from dbo.Student

create table dbo.Teacher
(
	[Id] int identity(1,1) not null,
	[FirstName] nvarchar(100) not null,
	[LastName] nvarchar(100) not null,
	[DateOfBirth] date null,
	[AcademicRank] nvarchar(2) null,
	[HireDate] date null,
	constraint [PK_Teacher] primary key clustered (Id)
)
select *from dbo.Teacher

create table dbo.Grade
(
	[Id] int identity(1,1) not null,
	[StudentID] nvarchar(10) not null,
	[CourseID] nvarchar(10) not null,
	[TeacherID] nvarchar(10) not null,
	[Grade] nvarchar(2) null,
	[Comment] nvarchar(100) null,
	[CreatedDate] date null,
	constraint [PK_Grade] primary key clustered (Id)
)
select *from dbo.Grade

create table dbo.Course
(
	[Id] int identity(1,1) not null,
	[Name] nvarchar(100) not null,
	[Credit] nvarchar(10) null,
	[AcademicYear] date null,
	[Semester] nvarchar(2) null,
	constraint [PK_Course] primary key clustered (Id)
)
select *from dbo.Course

create table dbo.AchievementType
(
	[Id] int identity(1,1) not null,
	[Name] nvarchar(100) not null,
	[Description] nvarchar(100) null,
	[ParticipationRate] nvarchar(3) null,
	constraint [PK_AchievementType] primary key clustered (Id)
)
select *from dbo.AchievementType

create table dbo.GradeDetails
(
	[Id] int identity(1,1) not null,
	[GradeID] nvarchar(10) not null,
	[AchievementTypeID] nvarchar(10) not null,
	[AchievementPoints] nvarchar(1) null,
	[AchievementMaxPoints] nvarchar(100) null,
	[AchievementDate] date null,
	constraint [PK_GradeDetails] primary key clustered (Id)
)
select *from dbo.GradeDetails
