--create database ООО_Спорт

use ООО_Спорт

create table Профиль 
(Ид_профиля int primary key,
Фамилия nvarchar (100) not null,
Имя nvarchar (100) not null,
Отчество nvarchar (100) null)

create table Приват_данные 
(Ид_приват_данные int primary key,
Ид_профиля int foreign key references Профиль (Ид_профиля) not null,
Пароль nvarchar (20) not null,
Логин nvarchar (20) not null)

create table Роль
(Ид_роли int primary key,
Роль nvarchar (50) not null)

create table Пользователи 
(Ид_пользователя int primary key,
Ид_профиля int foreign key references Профиль (Ид_профиля) null,
Ид_роли int foreign key references Роль (Ид_роли) not null)

create table Город
(Ид_города int primary key,
Город nvarchar (100) not null)

Create table Пункт_выдачи 
(Ид_пункта int primary key,
Почтовый_индекс nchar (6) not null,
Ид_города int foreign key references Город (Ид_города) not null,
Адрес nvarchar (100) not null)

create table Статус_заказа
(Ид_статус_заказа int primary key,
Статус_заказа nvarchar (50) not null)

create table Заказы
(Ид_заказа int primary key,
Ид_пользователя Int foreign key references Пользователи (Ид_пользователя),
Дата_заказа date not null,
Дата_доставки date not null,
Пункт_выдачи int foreign key references Пункт_выдачи (Ид_пункта) not null,
Код_для_получения nvarchar (3) not null,
Ид_статус_заказа int foreign key references Статус_заказа (Ид_статус_заказа) not null,
Итоговая_сумма decimal (10, 2) null)
--///////////////////////////////////////
create table Единицы_измерения
(Ид_единицы_измерения int primary key,
Единица_измерения nvarchar (10) not null)

create table Производитель
(Ид_производителя int primary key,
Производитель nvarchar (10) not null)

create table Поставщик
(Ид_поставщика int primary key,
Поставщик nvarchar (10) not null)

create table Категория_товара
(Ид_категории_товара int primary key,
Категория_товара nvarchar (10) not null)

create table Товары
(Ид_товара int primary key,
Артикул_товара nvarchar (30) not null,
Наименование nvarchar (100) not null,
Единица_измерения int foreign key references Единицы_измерения (Ид_единицы_измерения) not null,
Стоимость decimal (10, 2) not null,
Производитель int foreign key references Производитель (Ид_производителя) not null,
Поставщик int foreign key references Поставщик (Ид_поставщика) not null,
Категория_товара int foreign key references Категория_товара (Ид_категории_товара) not null,
Описание nvarchar (120) not null,
Изображение nvarchar (50) null)
--//////////////////////////////////////
create table Скидка
(Ид_скидки int primary key,
Ид_товара int foreign key references Товары (Ид_товара) not null, 
Действующая_скидка decimal (3,2) not null)

create table Склад
(Ид_склада int primary key,
Ид_товара int foreign key references Товары (Ид_товара) not null, 
Количество_на_складе decimal (10,3) not null)
--///////////////////////////////////////
create table Состав_товара --Состав_заказа
--(Ид_состав_заказа int primary key,
(Ид_заказа int foreign key references Заказы (Ид_заказа) not null,
Ид_товара int foreign key references Товары (Ид_товара) not null,
Количество_единиц_товара decimal (10, 3) not null,
Стоимость_товара_с_учетом_скидки decimal (10, 2)  null)