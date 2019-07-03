-- CREATE TABLE
-- user(
-- username varchar(32) PRIMARY KEY,
-- email varchar(64),
-- phone_number char(11),		-- 11 digit longs, if a initger will get rid of 0 at thge front, doesnt need mathmatical operation on
-- password varchar(64))

 select * from user;

ALTER USER 'root'@ 'local host' IDENTIFIED WITH mysql_native_password BY 'password'