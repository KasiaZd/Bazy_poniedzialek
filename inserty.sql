
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





