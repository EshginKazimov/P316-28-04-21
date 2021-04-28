--Use CinemaDB

--CREATE TABLE Customers(
--	Id int primary key identity,
--	Name nvarchar(100),
--	Surname nvarchar(100),
--	Phone nvarchar(100)
--)

--CREATE TABLE Halls(
--	Id int primary key identity,
--	Name nvarchar(100),
--	Seats int
--)

--CREATE TABLE Acter(
--	Id int primary key identity,
--	Name nvarchar(100)
--)

--CREATE TABLE Genre(
--	Id int primary key identity,
--	Name nvarchar(100)
--)

--CREATE TABLE Movie(
--	Id int primary key identity,
--	Name nvarchar(100)
--)

--CREATE TABLE MovieGenre(
--	Id int primary key identity,
--	MovieId int references Movie(Id),
--	GenreId int references Genre(Id)
--)

--CREATE TABLE MovieActer(
--	Id int primary key identity,
--	MovieId int references Movie(Id),
--	ActerId int references Acter(Id)
--)

--CREATE TABLE Sessions(
--	Id int primary key identity,
--	[Start] nvarchar(100),
--	[End] nvarchar(100),
--	MovieId int references Movie(Id),
--	HallId int references Halls(Id)
--)

--CREATE TABLE Tickets(
--	Id int primary key identity,
--	Type nvarchar(100),
--	Price decimal(6,2),
--	CustomerId int references Customers(Id),
--	SessionId int references Sessions(Id)
--)

--CREATE VIEW v_GetTicketsDetails
--AS
--SELECT s.Start, s.[End], t.Price, c.Name + ' ' + c.Surname 'Fullname', 
--h.Name 'HallName', m.Name 'MovieName', g.Name 'Genre'
--FROM Tickets t

--JOIN Customers c
--ON t.CustomerId=c.Id

--JOIN Sessions s
--ON t.SessionId=s.Id

--JOIN Halls h
--ON s.HallId=h.Id

--JOIN Movie m
--ON s.MovieId=m.Id

--JOIN MovieGenre mg
--ON m.Id=mg.MovieId

--JOIN Genre g
--ON mg.GenreId=g.Id

--JOIN MovieActer ma
--ON m.Id=ma.MovieId

--JOIN Acter a
--ON ma.ActerId=a.Id

SELECT * FROM v_GetTicketsDetails