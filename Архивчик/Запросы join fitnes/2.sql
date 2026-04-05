use Fitnes1 
select k.FirstName as Фамилия, k.LastName as Имя, k.Paramonic as Отчество, k.tel as Телефон, s.Tittle as Пол, Stage as Стаж, st.Tittle Статус_тренера
from Trener k join Sex s
on k.IdSex = s.IdSex 
left join StatusTren st
on st.IdStatTr = IdTr