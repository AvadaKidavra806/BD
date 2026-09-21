use Fitnes1 
select k.FirstName as Фамилия, k.LastName as Имя, k.Paramonic as Отчество, k.tel as Телефон, k.AgeOfBirsday as Дата_рождения, s.Tittle as Пол
from Klient k join Sex s
on k.IdSex=s.IdSex