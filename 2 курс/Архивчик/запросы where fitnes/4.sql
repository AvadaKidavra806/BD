use Fitnes1
--№4
select  K.firstname as Фамилия_клиента, K.Lastname as Имя_клиента, K.Paramonic as Отчество_клиента, T.firstname as Фамилия_тренера, t.Lastname as Имя_тренера, T.Paramonic as Отчество_тренера, DateStart as Дата_начала, DateEnd as Дата_конца, RepeatOfWeek as Колво_повторений_в_неделю
--select 
from  Klient k, Trener t, PlanTren p
where k.IdKl=p.IdKl and t.IdTr=p.IdTr 