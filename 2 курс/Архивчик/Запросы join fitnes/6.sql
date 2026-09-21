use Fitnes1
--№6
select T.firstname as Фамилия_тренера, t.Lastname as Имя_тренера, T.Paramonic as Отчество_тренера, tel as Телефон, Foto as Фото, Tittle as Пол, Stage as Стаж
from Trener t join Sex 
on t.IdSex=sex.IdSex and t.FirstName like '%ва'