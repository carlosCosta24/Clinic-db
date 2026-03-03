use Library;

create table Books(

BookId int identity(1,1) primary key,
Title nvarchar(100) not null, 
ISBN nvarchar(50) not null unique,
PublicationDate date not null,
Genre nvarchar(100) not null,
AdditionalDetails nvarchar(max),
Author nvarchar(100) not null

);

create table BookCopies(

CopyId int identity(1,1) primary key,
BookId int foreign key references Books(BookId) not null,
AvailabilityStatus bit not null

);

create table Users(

UserId int identity (1,1) primary key,
UserName nvarchar(20) not null,
Contact nvarchar(100) not null,
CardNumber nvarchar(50) not null unique

);

create table BorrowingRecords(

BorrowingRecordId int identity(1,1) primary key,
UserId int foreign key references Users(UserId) not null,
CopyId int foreign key references BookCopies(CopyId) not null,
BorrowDate date,
DueDate date not null,
ReturnDate date,
ActualReturnDate date

);

create table Reservations(

ReservationId int identity (1,1) primary key,
UserId int foreign key references Users(UserId) not null,
BookCopy int foreign key references BookCopies(CopyId) not null,
ReservationDate date

);

create table Fines(

FineId int identity(1,1) primary key,
UserId int foreign key references Users(UserId) not null,
BorrowingRecordId int foreign key references BorrowingRecords(BorrowingRecordId) unique not null,
NumberOfLateDays smallint ,
FineAmmount decimal(10,2) ,
PaymentStatus bit not null 


);

create table Settings(

DefualtBorrowDays tinyint not null,
DefualtFinePerDay tinyint not null

);


