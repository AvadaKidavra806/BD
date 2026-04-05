use Fitnes1
--?1
select FirstName as Фамилия , LastName as Имя, Paramonic as Отчество, tel as Телефон, AgeOfBirsday as Дата_рождения, Tittle as Пол
from Klient, Sex
where Klient.IdSex=Sex.IdSex

