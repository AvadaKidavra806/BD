--create database ГИБДД

use ГИБДД

create table Марка 
(Ид_марки int primary key,
Марка nvarchar (50) not null)

create table Модель 
(Ид_модели int primary key,
Модель nvarchar (50) not null)

create table Транспортное_средство
(Ид_транспортного_средства int primary key,
Марка int foreign key references Марка (Ид_марки) not null,
Модель int foreign key references Модель (Ид_модели) not null,
Год_выпуска nvarchar (4) not null,
Номер_птс nchar (7) not null, 
Номер_двигателя nchar (7) not null,
Номер_кузова nchar (17) not null,
Дата_регистрации date not null)



