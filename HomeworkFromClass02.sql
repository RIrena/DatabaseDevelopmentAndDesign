use [SEDCACADEMYDB]
go

select *from dbo.Student
where FirstName = 'Antonio'

select *from dbo.Student
where DateOfBirth > '1999.01.01'

select *from dbo.Student
where LastName like 'J%' and Enrolleddate like '1998-01%'

select *from dbo.Student
order by FirstName asc

select LastName from dbo.Teacher
union 
select LastName from dbo.Student