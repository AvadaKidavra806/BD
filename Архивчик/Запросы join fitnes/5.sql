use Fitnes1
--№5
select FirstName as Фамилия_клиента, LastName as Имя_клиента, Paramonic as Отчество_клиента, tel as Телефон, AgeOfBirsday as Дата_рождения, Foto as Фото, Tittle as Пол
from Klient join Sex
on Klient.IdSex=Sex.IdSex and Klient.FirstName like N'Жигалкина'