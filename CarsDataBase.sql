use CarsDetails;
SELECT CarsDataBase.*, CarMakers.MakeName
FROM     CarsDataBase INNER JOIN
                  CarMakers ON CarsDataBase.MakeID = CarMakers.MakeID


select distinct Make from CarsDataBase order by Make asc;


create table CarMakers(
MakeID int primary key identity(1,1),
MakeName nvarchar(50) not null
);

insert into CarMakers
select distinct Make from CarsDataBase order by Make asc;

select * from CarMakers;

update CarsDataBase
set MakeID = (select MakeID from CarMakers where CarMakers.MakeName = CarsDataBase.Make)

alter table CarsDataBase drop column Make;