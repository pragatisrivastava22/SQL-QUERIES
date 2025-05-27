select * from users.users2023;
select * from users.users2024;
select * from users.users2025;

-- list the new users added in 2024
select * from users.users2024 except select * from users.users2023;

-- list the new users added in 2025
select * from users.users2025 except select * from users.users2024;

-- list the user who left us
select * from users.users2023 except select * from users.users2024 except select * from users.users2025;

-- 4. list all the users that are there throughout the database for year 2023 & 2024
select * from users.users2024 union select * from users.users2023;

-- 5. list all the users that are there throughout the database 
select * from users.users2023 union select * from users.users2024 union select * from users.users2025;

-- 6. list all the users that are there with us from last 3 years
select * from users.users2023 intersect select * from users.users2024 intersect select * from users.users2025;

-- list all the users except that users who are there with us from 3 years
select * from users.users2023 union select * from users.users2024 union select * from users.users2025
except
select * from users.users2023 intersect select * from users.users2024 intersect select * from users.users2025;

-- 8. operators with joins
select * from users.users2023 as t_2023 left join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID;
select * from users.users2023 as t_2023 right join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID;

select * from users.users2023 as t_2023 left join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID 
union
select * from users.users2023 as t_2023 right join users.users2024 as t_2024 on t_2023.UserID = t_2024.userID;

