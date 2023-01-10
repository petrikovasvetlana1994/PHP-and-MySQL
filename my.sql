/*Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
Необходимо добавить 5-10 одногруппников в данную таблицу.
Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

Примечание:
Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон 
(7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя 
использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.

Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql */

-- create
CREATE TABLE CLASSMATES (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  adress TEXT NOT NULL
);

-- insert
INSERT INTO CLASSMATES VALUES (0001, 'Anna', '20', 'Barnaul');
INSERT INTO CLASSMATES VALUES (0002, 'Maria', '17', 'Moscow');
INSERT INTO CLASSMATES VALUES (0003, 'Tatiana', '27', 'Vladimir');
INSERT INTO CLASSMATES VALUES (0004, 'Natalia', '22', 'Gus-Khrustalny');
INSERT INTO CLASSMATES VALUES (0005, 'Vera', '19', 'Dubna');
INSERT INTO CLASSMATES VALUES (0006, 'Arseny', '39', 'Omsk');
INSERT INTO CLASSMATES VALUES (0007, 'Dmitry', '37', 'Voronezh');
INSERT INTO CLASSMATES VALUES (0008, 'Sergey', '39', 'Armavir');
INSERT INTO CLASSMATES VALUES (0009, 'Anton', '31', 'Voronezh');
INSERT INTO CLASSMATES VALUES (0010, 'Oleg', '33', 'Moscow');

-- fetch 
SELECT name FROM CLASSMATES where age >= 18 AND age < 30;