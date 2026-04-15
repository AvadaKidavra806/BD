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

--===================================

create table Регион 
(Ид_региона int primary key,
Регион nvarchar (50) not null)

create table Населенный_пункт 
(Ид_населенного_пункта int primary key,
Населенный_пункт nvarchar (50) not null)

create table Улица
(Ид_улицы int primary key,
Улица nvarchar (50) not null)

create table Адрес
(Ид_адреса int primary key,
Почтовый_индекс nvarchar (50) null,
Регион int foreign key references Регион (Ид_региона) not null,
Населенный_пункт int foreign key references Населенный_пункт (Ид_населенного_пункта) null,
Улица int foreign key references Улица (Ид_улицы) null,
Дом nvarchar (10) null,
Квартира nvarchar (10) null)

--==============================

create table Название_структуры
(Ид_названия_структуры int primary key,
Название_структуры nvarchar (20) not null)

create table Подразделение 
(Ид_подразделения int primary key,
Название_структуры int foreign key references Название_структуры (Ид_названия_структуры) null,
Населенный_пункт int foreign key references Населенный_пункт (Ид_Населенного_пункта) null,
Регион int foreign key references Регион (Ид_региона) null,
Код_подразделения nvarchar (10) not null)

create table Человек
(Ид_человека int primary key,
Фамилия nvarchar (50) not null,
Имя nvarchar (50) not null,
Отчество nvarchar (50) null,
Дата_рождения date null)

create table Паспортные_данные
(Ид_паспотные_данные int primary key,
Ид_человека int foreign key references Человек (Ид_человека) not null,
Серия nchar (4) not null,
Номер nchar (6) not null,
Кем_выдан_паспорт int foreign key references Подразделение (Ид_подразделения) not null)

create table Адрес_человека 
(Ид_адрес_человека int primary key,
Ид_человека int foreign key references Человек (Ид_человека) not null,
Ид_адреса int foreign key references Адрес (Ид_адреса) not null)

create table Водительское_удостоверение
(Ид_ву int primary key,
Ид_человека int foreign key references Человек (Ид_человека) not null,
Серия_ву nchar (4) null,
Номер_ву nchar (6) null,
Стаж_вождения nvarchar (10) null,
Кем_выдано_ву int foreign key references Подразделение (Ид_подразделения) null)

create table Страховая_компания
(Ид_компании int primary key,
Наименование_компании nvarchar (50) not null)

create table Страховка
(Ид_страховки int primary key,
Ид_транспортного_средства int foreign key references транспортное_средство (Ид_транспортного_средства) not null,
Ид_компании int foreign key references страховая_компания (Ид_компании) not null,
Страховой_взнос decimal (5, 2) not null) --(20, 2)

create table Водители_в_страховке
(Ид_водитель_в_страховкке int primary key,
Ид_ву int foreign key references Водительское_удостоверение (Ид_ву) not null,
Ид_страховки int foreign key references Страховка (Ид_страховки) not null)

create table Владелец_транспортного_средства
(Ид_владел_тс int primary key,
Ид_человека int foreign key references Человек (Ид_человека) not null,
Ид_транспортного_средства int foreign key references Транспортное_средство (Ид_транспортного_средства) not null,
Гос_номер nvarchar (10) not null,
Дата_смены_владельца date null)

--===============================

create table Статус_угона
(Ид_статуса_угона int primary key,
Статус nvarchar (20) not null)

create table История_угона
(Ид_история_угона int primary key,
Ид_транспортного_средства int foreign key references Транспортное_средство (Ид_транспортного_средства) not null,
Статус_угона int foreign key references статус_угона (Ид_статуса_угона) not null,
Дата_угона date not null,
Место_угона int foreign key references Адрес (Ид_адреса) not null,
Дата_нахождения date not null, --без not
Место_нахождения int foreign key references Адрес (Ид_адреса) null)

--=============================
--Исправлялка
alter table Страховка
alter column Страховой_взнос decimal (20, 2) not null

alter table История_угона
alter column Дата_нахождения date null

alter table Название_структуры
alter column Название_структуры nvarchar (20) not null

alter table [dbo].[Транспортное_средство]
alter column Год_выпуска date not null