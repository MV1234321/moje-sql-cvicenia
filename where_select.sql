-- Vytvoření databáze
-- za W zadejte vaše UČO
CREATE DATABASE W534373;
-- Ve Workbench nezapomenou aktualizovat pokud chcete vidět vaši vytvořenou databázi
-- V phpMyAdmin - pokud neuvidíte obnovte stránku

-- Vstup do databáze 
-- za W zadejte vaše UČO
USE W534373;
-- v phpMyAdmin "prokliknutí" názvu databáze


-- Vytvoření tabulky
CREATE TABLE `studenti` (
  `id` int AUTO_INCREMENT,
  `jmeno` varchar(60),
  `prijmeni` varchar(60),
  `pohlavi` varchar(1),
  `plat` int,
  `datum_narozeni` date,
  `mesto` varchar(20),
  `fakulta`  varchar(4),
  `abcd`  varchar(2),
  `test` int,
  PRIMARY KEY (`id`)
);


-- naplnění tabulky daty
insert into studenti values ('1', 'Jana', 'krátka', 'F', '23500', '1954-12-22', 'Brno', 'ESF', 'A', '0');
insert into studenti values ('2', 'Jana', 'Nováková', 'f', '42261', '2016-11-11', 'brno', 'esf', 'a', '1');
insert into studenti values ('3', 'Sophia', 'Santiago', 'F', '20758', '1962-11-16', 'Brno', 'ESF', 'á', '8');
insert into studenti values ('4', 'Jarek', 'Benes', 'M', '52483', '2017-06-11', 'Praha', 'ESF', '1', '8');
insert into studenti values ('5', 'Petr', 'Malý', 'M', '10000', '2001-09-23', 'Praha', 'ESF', '0', '8');
insert into studenti values ('6', 'Honza', 'Adamec', 'M', '29990', '1977-07-27', 'Praha', 'ESF', 'c', '7');
insert into studenti values ('7', 'Petra', 'Adamcova', 'F', '23500', '1982-03-16', 'Olomouc', 'ESF', 'ch', '6');
insert into studenti values ('8', 'Zuzka', 'Bezva', 'F', '39752', '2016-02-29', 'Ostrava', 'ESF', 'i', '7');
insert into studenti values ('9', 'Ivan', 'Sobota', 'M', '15274', '1900-02-01', 'Pardubice', 'ESF', 'h', '3');
insert into studenti values ('10', 'Petr', 'Novak', 'M', '27679', '2002-05-20', 'Zlin', 'ESF', 'Z', '2');
insert into studenti values ('11', 'Jirka', 'Plavec', 'M', '23500', '2017-12-30', 'Opava', 'ESF', '-', '1');
insert into studenti values ('12', 'Iva', 'Nováková', 'F', '25371', '2007-06-07', 'Opava', 'ESF', '&', '0');
insert into studenti values ('13', 'Ivan', 'Kurzo', 'M', '10000', '2018-02-22', 'Ostrava', 'ESF', '@', '5');
insert into studenti values ('14', 'Petr', 'Novak', 'M', '21072', '2011-06-15', 'Pardubice', 'ESF', 'A', '7');
insert into studenti values ('15', 'Iva', 'Nováková', 'F', '23181', '1994-02-13', 'Brno', 'ESF', 'Á', '8');
insert into studenti values ('16', 'Ela', 'Nová', 'F', '23500', '1987-12-14', 'Brno', 'ESF', 'z', '5');
insert into studenti values ('17', 'Jan', 'Novak', 'M', '49213', '1979-08-19', 'Brno', 'ESF', 'Z', '2');
insert into studenti values ('18', 'petr', 'novak', 'M', '18638', '1960-11-18', 'Brno', 'MED', 'Ž', '2');
insert into studenti values ('19', 'Tom', 'Krejza', 'M', '21086', '2017-09-24', 'Brno', 'MED', '+', '3');
insert into studenti values ('20', 'Ida', 'Krejzova', 'F', '54032', '2017-04-03', 'Brno', 'MED', ',', '5');
insert into studenti values ('21', 'Pavel', '', 'M', '23500', '2014-03-14', 'Brno', 'MED', '0', '7');
insert into studenti values ('22', 'Jakub', 'Nedelka', 'M', '50900', '2017-05-16', 'Praha', 'ESF', 'O', '3');
insert into studenti values ('23', 'Zuzka', 'Lesní', 'F', '49956', '2001-09-23', 'Brno', 'ESF', 'o', '2');
insert into studenti values ('24', 'Zuzana', 'Jarní', 'F', '10000', '2001-09-23', 'Brno', 'FIL', ' ', '1');
insert into studenti values ('25', 'Ela', 'Melera', 'F', '10000', '1994-02-13', 'Brno', 'FIL', 'Ä', '0');


-- kontrola v které jsme databázi
SELECT DATABASE();



-- Vypsat všechny data z tabulky
-- za předpokladu jste v databázi a tato tabulku s daty obsahuje
select * from studenti;
select all * from studenti;


-- Co dalšího potřebujete?
-- Jak vám odpoví AI?

-- Jen vybraný sloupec (sloupce)
SELECT jmeno from `studenti`;

-- Lepší zápis, reflektuje případné mezery v názvech sloupců AltGr + 7
SELECT `jmeno`, `prijmeni`  from `studenti`;


-- co chyby v zápise co provede?
-- Jak bude vypadat výpis Jméno?
-- Co velikosti písmen
select * from studenti Where test = 8
