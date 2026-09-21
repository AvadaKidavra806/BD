use Fitnes1
--?3
select  Klient.firstname as Фамилия_клиента, Trener.firstname as Фамилия_тренера, cel as Цель, StatusZayav.Tittle as Статус_заявки, Otkaz as Отказ
--select 
from Zayavka, Klient, Trener, StatusZayav
where Klient.IdKl=Zayavka.IdKl and Trener.IdTr=Zayavka.IdTr and StatusZayav.IdStZv=Zayavka.IdStZv