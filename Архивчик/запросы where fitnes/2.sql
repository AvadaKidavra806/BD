use Fitnes1
--№2
select T.firstname as Фамилия_тренера, t.Lastname as Имя_тренера, T.Paramonic as Отчество_тренера, tel as Телефон, Foto as Фото, sex.Tittle as Пол, Stage as Стаж, s.Tittle as Статус_тренера
from Trener t, Sex ,StatusTren s
where T.IdSex=Sex.IdSex and t.IdStatTr=s.IdStatTr

--select *
select T.firstname as Фамилия_тренера, t.Lastname as Имя_тренера, T.Paramonic as Отчество_тренера, tel as Телефон, Foto as Фото, sex.Tittle as Пол, Stage as Стаж--, s.Tittle as Статус_тренера
from Trener t, Sex ,StatusTren s
where T.IdSex=Sex.IdSex and t.IdStatTr is null

