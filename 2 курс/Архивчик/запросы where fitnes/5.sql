use Fitnes1
--№5
select FirstName as Фамилия_клиента, LastName as Имя_клиента, Paramonic as Отчество_клиента, tel as Телефон, AgeOfBirsday as Дата_рождения, Foto as Фото, Tittle as Пол
from Klient, Sex
where Klient.IdSex=Sex.IdSex and Klient.FirstName like 'Жигалкина'