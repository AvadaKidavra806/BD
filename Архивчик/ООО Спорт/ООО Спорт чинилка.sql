use ООО_Спорт

alter table Категория_товара
alter column Категория_товара nvarchar (100) not null

alter table Производитель 
alter column Производитель nvarchar (100) not null

alter table Поставщик 
alter column Поставщик nvarchar (100) not null

drop table Склад 

create table Склад 
(Ид_склад_инфо  int primary key,
Ид_товара int foreign key references Товары (Ид_товара) not null, 
Количество_на_складе decimal (10,3) not null)

alter table Приват_данные 
alter column Пароль nvarchar (100) not null

alter table Приват_данные 
alter column Логин nvarchar (100) not null

drop table Состав_заказа

create table Состав_заказа
(Ид_состав_заказа int primary key,
Ид_заказа int foreign key references Заказы (Ид_заказа) not null,
Ид_товара int foreign key references Товары (Ид_товара) not null,
Количество_единиц_товара decimal (10, 3) not null,
Стоимость_товара_с_учетом_скидки decimal (10, 2)  null)

--==============================

alter table Состав_заказа
drop column Стоимость_товара_с_учетом_скидки

alter table Заказы
drop column Итоговая_сумма

alter table Склад
alter column Количество_на_складе decimal (10)

--===================================

alter table Состав_заказа
alter column Количество_единиц_товара decimal (10)