create database users;

create table if not exists users.users2023 (UserID int primary key, name varchar(50));
create table if not exists users.users2024 (UserID int primary key, name varchar(50));
create table if not exists users.users2025 (UserID int primary key, name varchar(50));

insert into users.users2023 (UserID, Name) values (1,'Pragati'), (2,'Aishwary'), (3,'pratik');
insert into users.users2024 (UserID, Name) values (1,'Pragati'), (2,'Aishwary'), (3,'Amit');
insert into users.users2025 (UserID, Name) values (1,'Pragati'), (2,'Aishwary'), (3,'Amit'), (4,'Aditya'), (5,'Urvashi');

select * from users.users2023;
select * from users.users2024;
select * from users.users2025;
 
-- INNER JOIN USER 2023 & 2024 
SELECT * FROM USERS.USERS2023 AS T_2023;
SELECT * FROM USERS.USERS2024 AS T_2024;

SELECT * FROM USERS.USERS2023 AS T_2023 INNER JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID;
SELECT * FROM USERS.USERS2024 AS T_2024 INNER JOIN USERS.USERS2023 AS T_2023 ON T_2024.UserID = T_2023.userID;

-- user 2024 & 2025
SELECT * FROM USERS.USERS2024 AS T_2024 INNER JOIN USERS.USERS2025 AS T_2025 ON T_2024.UserID = T_2025.userID;
SELECT * FROM USERS.USERS2025 AS T_2025 INNER JOIN USERS.USERS2024 AS T_2024 ON T_2025.UserID = T_2024.userID;

-- user 2023 & 2025
SELECT * FROM USERS.USERS2023 AS T_2023 INNER JOIN USERS.USERS2025 AS T_2025 ON T_2023.UserID = T_2025.userID;
SELECT * FROM USERS.USERS2025 AS T_2025 INNER JOIN USERS.USERS2023 AS T_2023 ON T_2025.UserID = T_2023.userID;

-- user 2023, 2024 & 2025
SELECT * FROM USERS.USERS2023 AS T_2023 INNER JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID
 inner join USERS.USERS2025 AS T_2025 ON T_2025.UserID = T_2023.userID;
 
-- Left join | 2023 & 2024
SELECT * FROM USERS.USERS2023 AS T_2023 left JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID;
SELECT * FROM USERS.USERS2025 AS T_2025 left JOIN USERS.USERS2023 AS T_2023 ON T_2025.UserID = T_2023.userID;

-- Right join
SELECT * FROM USERS.USERS2023 AS T_2023 right JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID;
SELECT * FROM USERS.USERS2025 AS T_2025 right JOIN USERS.USERS2023 AS T_2023 ON T_2025.UserID = T_2023.userID;

-- cross inner join
select * from users.users2023 as t_2023 left join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID;
SELECT * FROM USERS.USERS2023 AS T_2023 right JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID;
select * from users.users2023 as t_2023 left join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID
union
SELECT * FROM USERS.USERS2023 AS T_2023 right JOIN USERS.USERS2024 AS T_2024 ON T_2023.UserID = T_2024.userID;

