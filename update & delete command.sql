use openAI;

select * from users;

-- update name
update users set name = 'sinha' where user_id = '1002';

-- update name & mail
update users set name = 'pragati', mail = 'pragati@gmail.com' where user_id = '1002';

update users set name = 'shubhu' where name = 'aishwary' and user_id = '1003';

-- delete rows
delete from users where user_id = '1006';

delete from users where name = 'amit' and mail = 'amitshekhar@gmail.com';

truncate table users;