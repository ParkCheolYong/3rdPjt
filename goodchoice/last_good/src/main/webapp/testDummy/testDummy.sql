drop table notice;
drop sequence notice_seq;


create table notice(
idx number not null primary key,
id varchar2(50) not null,
sub varchar2(200),
content varchar2(3000),
nalja date default sysdate
);

CREATE TABLE "HR"."USERLIST" 
   (	"EMAIL" VARCHAR2(20 BYTE), 
	"PW" VARCHAR2(50 BYTE), 
	"NICK" VARCHAR2(50 BYTE), 
	"PHONE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.USERLIST
SET DEFINE OFF;


create sequence notice_seq;
--notice dummy
insert into notice (idx, id, sub, content) values (notice_seq.nextval, 'writer', '제목1', '내용1'); 

--userList dummy
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('user@nace.com','qwer1234','수리부엉이',1088889999);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('user02@nace.net','qazwsx','응암동치킨',1077778888);


commit;
