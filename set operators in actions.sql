select * from users.users2023;
select * from users.users2024;
select * from users.users2025;

-- union | remove duplicates
select * from users.users2023 union select * from users.users2024;
select * from users.users2023 union select * from users.users2025;
select * from users.users2024 union select * from users.users2025;
select * from users.users2023 union select * from users.users2024 union select * from users.users2025;

-- union all | don't remove duplicates
select * from users.users2023 union all select * from users.users2024;
select * from users.users2023 union all select * from users.users2025;
select * from users.users2024 union all select * from users.users2025;
select * from users.users2023 union all select * from users.users2024 union select all * from users.users2025;

-- Except | show all the data of dominating table that is not there is other table
select * from users.users2023 except select * from users.users2024;
select * from users.users2024 except select * from users.users2023;
select * from users.users2023 except select * from users.users2025;
select * from users.users2025 except select * from users.users2023;
select * from users.users2023 except select * from users.users2024 except select * from users.users2025;
select * from users.users2025 except select * from users.users2024 except select * from users.users2023;

-- intersect | showing the common data
select * from users.users2023 intersect select * from users.users2024;
select * from users.users2023 intersect select * from users.users2025;
select * from users.users2024 intersect select * from users.users2025;
select * from users.users2023 intersect select * from users.users2024 intersect select * from users.users2025;



