use openai;

select * from users;

-- insert 
-- user_id, name, mail, phone, dob, city, marital status, sex

insert into users values
("1002", "pragati", "sinhapragati716@gmail.com", 6394422499, "2001-05-22", "noida", "married","female");

insert into users values
("1003", "aishwary", "aishwarysrivastava@gmail.com", 7054068786, "1995-10-24", "noida", "married", "male"),
("1004", "pratik", "pratiksinha199@gmail.com", 8318785653, "1996-09-25", "gorakhpur", "unmarried", "male");

insert into users (user_id, name, mail, phone)
values ("1005", "amit", "amitshekhar@gmail.com", 6921574551);

insert into users (name, user_id, mail, phone)
values("aditya", "1006", "aditya@gmail.com", 7512369854)
