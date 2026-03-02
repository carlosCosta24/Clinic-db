use Clinic;

create table Persons(

PersonId int identity(1,1) not null primary key,
PersonName nvarchar(20) not null,
DateOfBirth date not null,
Gender nvarchar(1) not null check(Gender in ('M','F')),
PhoneNumber nvarchar(15) not null unique,
Email nvarchar(100) not null unique ,
Address nvarchar(100) not null
);

create table Patients(

PatientId int not null identity(1,1) primary key,
PersonId int foreign key references Persons(PersonId) not null unique

);


create table Doctors(

DoctorId int not null primary key identity(1,1),
Specialization nvarchar(50) not null,
PersonId int foreign key references Persons(PersonId) not null unique

);

create table MedicalRecords(

RecordId int identity (1,1)  not null primary key,
VisitDescription nvarchar(200),
Diagnosis nvarchar(200) not null,
AdditionalNotes nvarchar(200)
);

create table Payments(

PaymentId int identity (1,1) primary key,
PaymentDate date not null,
PaymentMethod nvarchar(50) not null,
AmountPaid decimal(10,2) not null,
AdditionalNote nvarchar(200)
);

create table Appointments(

AppointmentId int identity (1,1) not null primary key,
PatientId int foreign key references Patients(PatientId) not null,
DoctorId int foreign key references Doctors(DoctorId) not null,
AppointmentDateTime datetime not null,
-- Status: Pending, Confirmed, Completed, canceled, Rescheduled, No Show,
AppointmentStatus tinyint not null check (AppointmentStatus in (1 ,2 ,3 ,4 ,5 ,6)),
MedicalRecordId int foreign key references MedicalRecords(RecordId),
PaymentId int foreign key references Payments(paymentId) 

);

create table Prescriptions(

PrescriptionId int identity (1,1) primary key not null,
MedicalRecordId int foreign key references MedicalRecords(RecordId) not null,
MedicationName nvarchar(100) not null,
Dosage nvarchar(50) not null,
Frequency nvarchar(20) not null,
StartDate date not null,
EndDate date not null,
SpecialInstructions nvarchar(50)
);
