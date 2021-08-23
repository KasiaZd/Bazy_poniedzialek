NOT NULL


insert into nazwa_tabeli (kolumna1, kolumna2, .., kolumnan) values (wartość_kolumny1, wartość_kolumny2, ..., wartość_kolumnyn) 

insert into nazwa_tabeli (kolumna_znakowa, kolumna_czasowa, kolumna_datowa) values ('wartość_znakowa', '12:30:00', '2021-08-02')

insert into role (id, nazwa) values (1, 'administator')
insert into role (id, nazwa) values (2, 'bibliotekarz')
insert into role (id, nazwa) values (3, 'użytkownik zwykły')


insert into kategoria (id, nazwa) values (1, 'książki')
insert into kategoria (id, nazwa) values (2, 'płyty CD')
insert into kategoria (id, nazwa) values (3, 'czasopisma')
insert into kategoria (id, nazwa) values (4, 'kasety VHS')
insert into kategoria (id, nazwa) values (5, 'kasety magnetofonowe')
insert into kategoria (id, nazwa) values (6, 'płyty winylowe')


create table kategoria_rozszerzona 
(id int not null primary key,
kategoria_id int, 
nazwa varchar(100))

insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (1, 1, 'fantastyka')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (2, 1, 'literatura faktu')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (3, 1, 'romans')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (4, 1, 'kryminał')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (5, 1, 'sci-fi')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (6, 2, 'programy')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (7, 2, 'muzyka')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (8, 2, 'film')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (9, 2, 'zdjęcia')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (10, 3, 'popularno-naukowe')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (11, 3, 'wędkarskie')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (12, 3, 'poradniki')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (13, 3, 'dla dzieci')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (14, 3, 'dla majsterkowiczów')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (15, 4, 'film')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (16, 4, 'videoklip')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (17, 5, 'nauka języków obcych')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (18, 5, 'muzyka klasyczna')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (19, 5, 'muzyka rozrywkowa')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (20, 5, 'muzyka dance')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (21, 5, 'hip-hop')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (22, 6, 'muzyka klasyczna')
insert into kategoria_rozszerzona (id, kategoria_id, nazwa) values (23, 6, 'muzyka rozzrywkowa')

Do tabeli możemy dodać wartości także przez grupowe dodawanie wartości 
- funkcji, 
- procedury,
- plików CSV,
- plików excelowych,
- za pomocą klauzuli bulk collect
- odtworzenie z backupu


insert into uzytkownicy (id, NAZWA, haslo, email, ROLE_ID) values (1, 'administrator', 'trudne_haslo', 'admina@wypozyczalnia.pl', 1)
insert into uzytkownicy (id, NAZWA, haslo, email, ROLE_ID) values (2, 'bibliotekarka', 'jestem_bibliotekarka', 'bibliotekarka@wypozyczalnia.pl', 2)
insert into uzytkownicy (id, NAZWA, haslo, email, ROLE_ID) values (3, 'bibliotekarka2', 'bibliotekarka2_maj2020', 'bibliotekarka2a@wypozyczalnia.pl', 2)
insert into uzytkownicy (id, NAZWA, haslo, email, ROLE_ID) values (4, 'kate', 'trudne_haslo_123', 'kate@kate.pl', 3)
insert into uzytkownicy (id, NAZWA, haslo, email, ROLE_ID) values (5, 'michal', 'JestemMichal', 'michal@michal.pl', 3)


alter table PRODUKTY alter column kategoria_id  


insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (1, 'Historia bez cenzury', 2, 15, 'Wojciech Drewniak', '342445667')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (2, 'Rusz głową JAVA', 2, 15, 'Roel Kallman', '3345465')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (3, 'Koncert klasyczny na fortepian', 7, 12, 'Fryderyk Chopin', '67899532')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (4, 'Focus', 10, 35, 'autor nieznany', '122021')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (5, 'Pani Domu', 12, 10, 'autor nieznany', '252021')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (6, 'Murator', 12, 5, 'autor nieznany', '52021')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (7, 'Autka', 8, 10, 'autor nieznany', '34567897')
insert into produkty (id, tytul, kategoria_id, ILOSC_NOMINALNA, AUTOR, UNIKALNY_NUMER)
values (8, 'Epoka lodowcowa 3', 8, 10, 'autor nieznany', '15826657')


alter table WYPOZYCZENIA  drop column produkt_id

insert into wypozyczenia (id, PRODUKTY_ID, UZYTKOWNICY_ID, DATA_WYPOZYCZENIA, DATA_ZWROTU, ILOSC)
values (1, 1, 3, '2021-08-02', null, 1)
insert into wypozyczenia (id, PRODUKTY_ID, UZYTKOWNICY_ID, DATA_WYPOZYCZENIA, DATA_ZWROTU, ILOSC)
values (2, 2, 2, '2021-07-02', '2021-07-04', 1)
insert into wypozyczenia (id, PRODUKTY_ID, UZYTKOWNICY_ID, DATA_WYPOZYCZENIA, DATA_ZWROTU, ILOSC)
values (3, 3, 4, '2021-07-03', '2021-07-03', 1)
insert into wypozyczenia (id, PRODUKTY_ID, UZYTKOWNICY_ID, DATA_WYPOZYCZENIA, DATA_ZWROTU, ILOSC)
values (4, 1, 4, '2021-07-03', '2021-07-03', 1)
insert into wypozyczenia (id, PRODUKTY_ID, UZYTKOWNICY_ID, DATA_WYPOZYCZENIA, DATA_ZWROTU, ILOSC)
values (5, 3, 5, '2021-07-05', '2021-08-02', 1)



select top(10)* from kategoria 


select top(10)* from UZYTKOWNICY u 
 --do doczytania 
co zrobić aby hasło było hashowane. (jakiej użyć funkcji)


select p.KATEGORIA_ID,
	   p.TYTUL,
	   p.ILOSC_NOMINALNA,
	   p.AUTOR 
from PRODUKTY p 


select top(100)* from KATEGORIA_ROZSZERZONA

-------------------------------------------------------------------------------------------------------


select sum(id) from kategoria_rozszerzona kr --276

select PI() +25 

SELECT 34 + 15+ 12

SELECT 56-12

SELECT ABS(-10)
SELECT abs(10)


SELECT ABS (-10) + ABS(10)

SELECT SQRT(4)
SELECT SQRT(16)

SELECT POWER(2,6) 
SELECT POWER (15, 3)
SELECT 15*15*15

SELECT ROUND(34.235, 1)
SELECT ROUND(34.273, 1)

SELECT ROUND(34.355, -1)

SELECT ROUND(35.355, -1)


SELECT LEFT('ALA MA KOTA', 8) 

SELECT RIGHT ('ALA MA KOTA', 8) 

SELECT CHARINDEX('MA', 'ALA MA KOTA')

SELECT UPPER('ala ma kota')
SELECT lower ('ALA MA KOTA') 

select len('Ala ma kota')

select substring('Ala ma kota', 4, 3)

select substring('Ala ma kota', 6, 4)

select ltrim('                                  tworzę pusty ciąg znaków             Ala ma kota a kot ma alę  coś tam dalej      ')
select rtrim('                                  tworzę pusty ciąg znaków             Ala ma kota a kot ma alę  coś tam dalej      ')

select replace('                                  tworzę pusty ciąg znaków             Ala ma kota a kot ma alę  coś tam dalej      ', ' ', '.')



select getdate()
select datepart(yyyy, GETDATE())
select datepart(yy, GETDATE())

select datepart(mm, GETDATE())
select datepart(m, GETDATE())

select datepart(qq, GETDATE())
select datepart(q, GETDATE())

select datepart(dd, GETDATE())
select datepart(d, GETDATE())

select datepart(year, GETDATE())
select datepart(month, GETDATE())
select datepart(day, GETDATE())

select datepart(dy, GETDATE())


select datepart(wk, GETDATE())
select datepart(ww, GETDATE())

select datepart(dw, GETDATE())
select datepart(weekday, GETDATE())

select datepart(hh, GETDATE())
select datepart(hour, GETDATE())
select datepart(mi, GETDATE())
select datepart(n, GETDATE())
select datepart(MINUTE, GETDATE())

select datepart(yyyy, GETDATE())
select datepart(yy, GETDATE())


select datename(day, getdate()) 

select datename(dw, GETDATE())
select datename(mm, GETDATE())
select datename(weekday, GETDATE())

select DATEADD(dd, 13, GETDATE()) 

select datediff(dd,'2001-08-09', GETDATE())

select datediff(dd, data_urodzenia, getdate())

select datediff(dd, '2000-01-04', getdate())

select DATEDIFF(mm, '2001-08-02', getdate()) 

select datediff(yyyy, '2001-08-02', getdate())



select * from KATEGORIA k

select trim(nazwa) from KATEGORIA k 
select left(NAZWA, 5) from KATEGORIA k2 

select right(nazwa, 7) from KATEGORIA k 

select upper(nazwa) from KATEGORIA k 
select LOWER(nazwa) from KATEGORIA k2 


select replace(nazwa, 'se', ' bardzo fajna podmiana ') from kategoria


select * from UZYTKOWNICY u 

select * from WYPOZYCZENIA w 

select id, UZYTKOWNICY_ID, datediff(dd, data_wypozyczenia, data_zwrotu) as roznica_dni
from WYPOZYCZENIA w 


select sum(datediff(dd, data_wypozyczenia, data_zwrotu)) as roznica_dni, UZYTKOWNICY_ID from wypozyczenia
GROUP by UZYTKOWNICY_ID 
order by UZYTKOWNICY_ID 


------ 5 zajęcia 
use wypozyczalnia

SELECT * from KATEGORIA k 

select * from PRODUKTY p 

select * from role

select * from UZYTKOWNICY u

select * from wypozyczenia

select * from kategoria_rozszerzona kr 



alter table drop constraint PRODUKTY_KATEGORIA_FK
 

EXEC sp_RENAME 'PRODUKTY.KATEGORIA_ID' , 'kategoria_rozszerzona_id' 



select count(w.PRODUKTY_ID) as liczba_wypozyczen, --w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR 
from WYPOZYCZENIA w 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
group by --w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
w.PRODUKTY_ID, p.TYTUL, p.AUTOR 

select k.ID, k.NAZWA as nazwa_kategorii, 
kr.nazwa as 'nazwa kateogrii rozszerzonej'
from kategoria k 
join kategoria_rozszerzona kr on kr.kategoria_id  = k.id

select k.ID, k.NAZWA as nazwa_kategorii, 
kr.nazwa as 'nazwa kateogrii rozszerzonej'
from kategoria_rozszerzona kr  
join kategoria k on kr.kategoria_id  = k.id

SELECT * from PRODUKTY p 

select w.UZYTKOWNICY_ID, w.PRODUKTY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU,
p.TYTUL, p.KATEGORIA_rozszerzona_ID, p.AUTOR,
k.NAZWA as nazwa_kategorii,
kr.nazwa as nazwa_kategorii_rozszerzonej
from WYPOZYCZENIA w 
join PRODUKTY p on w.PRODUKTY_ID = p.id
join kategoria_rozszerzona kr on kr.ID =p.kategoria_rozszerzona_id 
JOIN KATEGORIA k on kr.KATEGORIA_ID = k.id


select w.PRODUKTY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
p.TYTUL, p.AUTOR,
u.NAZWA
from WYPOZYCZENIA w 
join PRODUKTY p ON p.ID = w.PRODUKTY_ID 
right join UZYTKOWNICY u on u.ID  = w.UZYTKOWNICY_ID 


select w.PRODUKTY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
p.TYTUL, p.AUTOR,
u.NAZWA
from WYPOZYCZENIA w 
join PRODUKTY p ON p.ID = w.PRODUKTY_ID 
join UZYTKOWNICY u on u.ID  = w.UZYTKOWNICY_ID 

select w.PRODUKTY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
p.TYTUL, p.AUTOR,
u.NAZWA
from WYPOZYCZENIA w 
left join PRODUKTY p ON p.ID = w.PRODUKTY_ID 
join UZYTKOWNICY u on u.ID  = w.UZYTKOWNICY_ID 


select p.TYTUL, p.AUTOR, w.PRODUKTY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, 
u.NAZWA
from PRODUKTY p 
left join WYPOZYCZENIA w ON p.ID = w.PRODUKTY_ID 
left join UZYTKOWNICY u on u.ID  = w.UZYTKOWNICY_ID 


select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 


select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA > ('2021-07-01') and w.DATA_ZWROTU <('2021-07-31')


select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where u.NAZWA like 'bibliotekarka'


select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where u.NAZWA like 'bibliotekarka%'

select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where u.NAZWA = 'bibliotekarka'



select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where p.ID in (1,2,4,5)


select w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where p.ID not in (2,3,4)




--zapytanie zwraca pacjentów o peselu (21251254678 i nazwisku Kowalski)<- składowa AND lub imieniu Adam, co wynika z OR.   
select imie,
nazwisko, 
pesel
from pacjenci 
where pesel like '21251254678'
and nazwisko like 'Kowalski'
or imie like 'Adam'




select 
case when p.id = 2
then 'muzyka'
when p.id = 3 
then 'film'
when p.id = 4 or p.id = 1
then 'cokolwiek'
end as typ_produktu,
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 



select top(10) * from PRODUKTY p 


select 
case when p.id = 2
then 'muzyka'
when p.id = 3 and p.id = 1
then 'film'
when p.id = 4 or p.id = 5
then 'cokolwiek'
end as typ_produktu,
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 



DROP TABLE - usuwa trwale całą tabelę, kolumnę wraz z zawartością 
DELETE wartość- usuwa tylko wartość(wiersz z wartością)


Widoki - struktury które wybierają jakąś ograniczoną część wyników zapytań. 

CREATE VIEW Wypozyczenia_miesieczne 
AS Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA between '2021-07-01' and '2021-07-31'

create VIEW Wypozyczenia_miesieczne 
AS Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA between '2021-08-01' and '2021-08-31'





Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA between '2021-08-01' and '2021-08-31'


select * from WYPOZYCZENIA w 


select * from Wypozyczenia_miesieczne 


Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA > '2021-07-01' and DATA_ZWROTU < '2021-07-31'



Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA > '2021-08-01' and DATA_ZWROTU < '2021-08-31'




create procedure Procedura_1
(
	@p_data_wypozyczenia date,
	@p_data_zwrotu date
)
as 
begin
Select 
w.UZYTKOWNICY_ID, w.DATA_WYPOZYCZENIA, w.DATA_ZWROTU, w.PRODUKTY_ID, 
p.TYTUL, p.AUTOR,
u.NAZWA as nazwa_uzytkownika, 
r.NAZWA as rola
from WYPOZYCZENIA w 
join UZYTKOWNICY u on w.UZYTKOWNICY_ID = u.id
JOIN [ROLE] r on r.ID  = u.ROLE_ID 
join PRODUKTY p on p.ID = w.PRODUKTY_ID 
where w.DATA_WYPOZYCZENIA > @p_data_wypozyczenia and DATA_ZWROTU < @p_data_zwrotu
end

exec Procedura_1 @p_data_wypozyczenia='2021-01-07', @p_data_zwrotu='2021-08-31'


create procedure procedura_2 
(
	@promien_kola float, 
	@PI float = 3.14  
)
as BEGIN 
	select @PI*(@promien_kola * @promien_kola)
END


exec procedura_2  @promien_kola = 4


alter procedure procedura_3 
(
	@imie varchar(50), 
	@wiek int  
)
as BEGIN 
	select 'Witaj '+ @imie +'. Twój wiek to: '+ cast(@wiek as varchar) + ' lat'
END


exec procedura_3  @imie = 'Katarzyna', @wiek = 25











