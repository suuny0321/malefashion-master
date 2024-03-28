drop table Member;
cascade constraints purge;

create table Member(
Mem_Id VARCHAR2(20) primary key,
Mem_nickname VARCHAR2(30) UNIQUE,
Mem_name VARCHAR2(30) NOT NULL,
password NUMBER(16) NOT NULL,
emil VARCHAR2(30) NOT NULL,
join_date DATE DEFAULT SYSDATE NOT NULL,
birthdate DATE NOT NULL,
phone VARCHAR2(30) NULL,
Mem_eng_name VARCHAR2(30) NULL,
Mem_gender VARCHAR2(3) NULL,
Mem_passport VARCHAR2(9) NULL,
Mem_img VARCHAR2(50) NULL,
adminCk NUMBER NOT NULL
);

insert into Member
(Mem_Id,Mem_nickname, Mem_name,password,emil,join_date,birthdate,phone,Mem_eng_name, Mem_img, adminCk  )
values('admin','삐약이','관리자','1234','hta@hta.com','sysdate','','010-1234-1234','Hong Gil Dong','');

insert into Member
(Mem_Id,Mem_Pwd, Mem_Email,Mem_Name)
values('admin1','1234','hta1@hta.com','홍길동');
		
select * from Member;