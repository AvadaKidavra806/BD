--create database Дороги_России
use Дороги_России

create table Данные_работника
(Ид_данные_работника int primary key,
Фамилия nvarchar (100) not null,
Имя nvarchar (100) not null,
Отчество nvarchar (100) null,
Дата_рождения date null,
E_mail nvarchar (70) null,
Доп_инфа nvarchar (100) null)

create table Типы_номеров
(Ид_тип int primary key,
Тип nvarchar (50)  not null)

create table Номера
(Ид_номер int primary key,
Данные_работника int foreign key references  Данные_работника ( Ид_данные_работника) not null,
Номер nvarchar (18) not null,
Тип_номера int foreign key references Типы_номеров (Ид_тип) not null)

create table Подразделение
(Ид_подразделение int primary key ,
Название_подразделения nvarchar (100)  not null)

create table Начальник_подразделения
(Ид_начальник_подразделения int primary key,
Данные_начальника int foreign key references Данные_работника (Ид_данные_работника) not null,
Подразделение int foreign key references Подразделение (Ид_подразделение) not null)

create table Должность
(Ид_должность int primary key,
Должность nvarchar (100)  not null)

create table Кабинет
(Ид_кабинет int primary key,
Кабинет nvarchar (20)  not null)

create table Доп_инфа_работник
(Ид_доп_инфа_работник int primary key,
Данные_работника int foreign key references Данные_работника (Ид_данные_работника) not null,
Подразделение int foreign key references Подразделение (Ид_подразделение) not null,
Должность int foreign key references Должность (Ид_должность) not null,
Кабинет int foreign key references Кабинет (Ид_кабинет) not null)

create table Помощник
(Ид_помощник int primary key,
Данные_работника int foreign key references Данные_работника (Ид_данные_работника) not null,
Данные_помощника int foreign key references Данные_работника (Ид_данные_работника) not null)

create table Тип_уваж_пропуска
(Ид_тип_уваж_пропуска int primary key,
Тип_уваж_пропуска nvarchar (50)  not null)

create table Календарь_посещения
(Ид_посещение int primary key,
Данные_работника int foreign key references Данные_работника (Ид_данные_работника) not null,
Дата_рабочего_дня date not null,
Индикатор_посещения bit not null)

create table Инфо_уваж_пропуск
(Ид_уваж_пропуск int primary key,
Ид_посещения int foreign key references Календарь_посещения (Ид_посещение) not null,
Ид_тип_уваж_пропуска int foreign key references тип_уваж_пропуска (Ид_тип_уваж_пропуска) not null,
Дата_начала date not null,
Дата_конца date not null,
Данные_подменщика int foreign key references Данные_работника (Ид_данные_работника) not null)

--основная база 


/*
create table WorkingCalendar
(
    Id            bigint not null
        constraint WorkingCalendar_pk
            primary key,
    ExceptionDate date   not null,
    IsWorkingDay  bit    not null
)


INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (1, N'2024-01-01', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (2, N'2024-01-02', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (3, N'2024-01-03', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (4, N'2024-01-04', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (5, N'2024-01-05', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (6, N'2024-01-08', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (7, N'2024-02-23', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (8, N'2024-03-08', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (9, N'2024-04-27', 1);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (10, N'2024-04-29', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (11, N'2024-04-30', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (12, N'2024-05-01', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (13, N'2024-05-09', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (14, N'2024-05-10', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (15, N'2024-06-12', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (16, N'2024-11-02', 1);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (17, N'2024-11-04', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (18, N'2024-12-28', 1);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (19, N'2024-12-30', 0);
INSERT INTO WorkingCalendar (Id, ExceptionDate, IsWorkingDay) VALUES (20, N'2024-12-31', 0);
*/

