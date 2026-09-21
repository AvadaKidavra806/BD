--Create database НЕ_НАВРЕДИ

use  НЕ_НАВРЕДИ

create table Предприятия
(Ид_предприятия int identity (1,1) primary key,
Страна_предприятия nvarchar (129), 
Название_предприятия nvarchar(128) not null, 
Адрес_предприятия nvarchar (128) null,
ИНН nvarchar (12) null,
Расчетный_счет nvarchar (20) null,
БИК nvarchar (9) null)

create table Клиенты
(Ид_клиент int identity (1,1) primary key,
Фамилия_клиента nvarchar (127) not null,
Имя_клиента nvarchar (123) not null,
Серия_паспорта nvarchar (4) null,
Номер_паспорта nvarchar (6) null,
Дата_рождения date null,
Телефон nvarchar (11), --(21)
Логин nvarchar (126) not null,
Пароль nvarchar (129) not null,
"IP" nvarchar (39) not null, --null
Последние_посещение date,
/*Электронная_почта nvarchar (130) null,
Страна nvarchar (100) null,
[GUID] nvarchar (36) null,  */
Ид_предприятия int  foreign key references  Предприятия (Ид_предприятия) null)

create table Статус_заказа
(Ид_статус int identity (1,1) primary key,
Статус nvarchar (100)) --not null

create table Заказ
(Ид_заказ int identity (1,1) primary key,
Номер_заказа nvarchar (100) not null, 
Дата_создания_заказа date null,
Ид_клиент int foreign key references Клиенты (Ид_клиент),
Статус_заказа int foreign key references Статус_заказа (Ид_статус) null,
Время_выполнения_заказа time null,
Стоимость_для_клиента decimal (10, 3) null)33 

create table Сотрудники
(Ид_сотрудника int identity (1,1) primary key,
Фамилия_сотрудника nvarchar (129) not null,
Имя_сотрудника nvarchar (129) not null,
Эл_почта_сотрудника nvarchar (211) null,
Серия_паспорта nvarchar (4) not null,
Номер_паспорта nvarchar (6) not null,
Логин_сотрудника nvarchar (130) not null,
Пароль_сотрудника nvarchar (100) not null)

create table Должность 
(Ид_должности int identity (1,1) primary key,
Название_должности nvarchar (126) not null)

create table Сотрудники_должность
(Ид_сотрудник_должность int identity (1,1) primary  key,
Ид_сотрудник int foreign key references Сотрудники, --not null
Ид_должность int foreign key references Должность) --not null

create table Услуги 
(Ид_услуга int identity (1,1) primary key,
Код_услуги nvarchar (123) not null,
Название_услуги nvarchar (87) not null,
Цена_услуги decimal (12,3), -- (12,2), not null
Срок_выполнения_услуги nvarchAR (23) null,
Среднее_отклонение nvarchar (34) null)

create table Утилизаторы
(Ид_утилизатора int identity (1,1) primary key,
Название_утилизатора nvarchar (124) not null)

create table Заказ_инфо
(Ид_заказ_инфо int identity (1,1) primary key, 
Ид_заказа int foreign key references Заказ, --not null
Ид_услуги int foreign key references Услуги, --not null
Ид_сотрудника int foreign key references Сотрудники_должность, --not null
Статус_услуги_заказа int foreign key references статус_заказа, 
Ид_утилизатора int foreign key references утилизаторы,
Дата_поступления_на_утилизатор date,
Время_поступления_на_утилизатор time,
Дата_выполнения date,
Время_выполнения_в_сек decimal (5,3))


