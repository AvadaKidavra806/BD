use Дороги_России

select Фамилия, Имя, Отчество, Дата_рождения, E_mail
from Данные_работника др
where DATEADD(year, -35, GETDATE())>= др.Дата_рождения and DATEADD(year, -45, GETDATE())<= др.Дата_рождения 