drop table member;
cascade constraints purge;

CREATE TABLE member (
    member_id VARCHAR2(20) PRIMARY KEY,
    member_nickname VARCHAR2(30) UNIQUE,
    member_name VARCHAR2(30) NOT NULL,
    password_hash NUMBER(16) NOT NULL,
    email VARCHAR2(30) NOT NULL,
    join_date DATE DEFAULT SYSDATE NOT NULL,
    birthdate DATE NOT NULL,
    phone_number VARCHAR2(30) NULL,
    english_name VARCHAR2(30) NULL,
    gender VARCHAR2(3) NULL,
    passport_number VARCHAR2(9) NULL,
    profile_image VARCHAR2(50) NULL,
    admin_check NUMBER NOT NULL
);



insert into member
(member_id,member_nickname, member_name,password_hash,email,birthdate,admin_check)
values('admin','삐약이','관리자',1234,'hta@hta.com','2000-10-05',0);

insert into member
(member_id,member_nickname, member_name,password_hash,email,birthdate,phone_number,english_name,gender,passport_number,profile_image,admin_check)
values('admin1','admin','관리자1',1234,'admin@hta.com','2000-10-11','010-1234-134','admin','남','admin1','',1);

		
select * from member;