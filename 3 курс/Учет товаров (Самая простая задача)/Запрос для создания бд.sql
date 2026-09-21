--create database Учет_товаров_самая_простая_задача

 
use Учет_товаров_самая_простая_задача

create table Вариативность_накладной
(Ид_вариант_накладной int primary key,
Вариант_накладной Nvarchar(50) not null) --  нам / от нас

create table Накладная
(Ид_накладной int primary key,
Номер_накладной Nvarchar(50) not null,
Дата_время_отгрузки datetime,
Ид_вариант_накладной int foreign key references Вариативность_накладной not null)

create table Единица_измерения_товара
(Ид_единицы_измерения_товара int primary key,
Единица_измерения nvarchar(30) not null)

create table Товары
(Ид_товара int primary key,
Наименование_товара Nvarchar (50) not null,
Кол_во_товара_на_складе decimal(10,3) not null,
Ид_единица_измерения_товара int foreign key references Единица_измерения_товара not null)

create table Поступления 
(Ид_поступления int primary key,
Ид_накладной int foreign key references Накладная not null,
Ид_товара int foreign key references Товары not null,
Кол_во_поступившего_товара decimal(10,3) not null,
Закупочная_стоимость decimal null)

create table Продажи 
(Ид_продажи int primary key,
Ид_накладной int foreign key references Накладная not null,
Ид_товара int foreign key references Товары not null,
Кол_во_проданного_товара decimal(10,3) not null,
Стоимость_при_продаже decimal null)