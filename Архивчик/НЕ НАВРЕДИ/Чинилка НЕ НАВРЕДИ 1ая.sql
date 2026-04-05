use НЕ_НАВРЕДИ_1ая

alter table [dbo].[Сотрудники_должность]
alter column [Ид_сотрудник] int not null

alter table [dbo].[Сотрудники_должность]
alter column [Ид_должность] int not null

alter table [dbo].[Статус_заказа]
alter column [Статус] nvarchar not null

alter table [dbo].[Услуги]
alter column [Цена_услуги] decimal (12,2) not null

alter table [dbo].[Заказ_инфо]
alter column [Ид_заказа] int not null

alter table [dbo].[Заказ_инфо]
alter column [Ид_услуги] int not null

alter table [dbo].[Заказ_инфо]
alter column [Ид_сотрудника] int not null

alter table [dbo].[Клиенты]
add Электронная_почта nvarchar (130) 

alter table [dbo].[Клиенты]
add Страна nvarchar (100) 

alter table [dbo].[Клиенты]
add [GUID] nvarchar (36) 

alter table [dbo].[Клиенты]
alter column [IP] nvarchar (39)  null

alter table [dbo].[Клиенты]
alter column [Телефон] nvarchar (21) null

/*alter table Предприятия
add  Страна_предприятия nvarchar (129)*/