use Fitnes1
select k.FirstName as Фамилия_Клиента, k.LastName as Имя_Клиента, t.FirstName as Фамилия_Тренера ,t.LastName as Имя_Тренера, 
Cel as Цель,  StatusZayav.Tittle as Статус_заявки, Otkaz as Отказ
from Zayavka z join  Klient k
on z.IdKl=k.IdKl
join Trener t
on z.IdTr = t.IdTr
join StatusZayav 
on StatusZayav.IdStZv=z.IdStZv
