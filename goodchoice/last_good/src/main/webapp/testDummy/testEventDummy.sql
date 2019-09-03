--------------------------------------------------------
--  ������ ������ - ȭ����-9��-03-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MYPAGE
--------------------------------------------------------

  CREATE TABLE "HR"."MYPAGE" 
   (	"EMAIL" VARCHAR2(100 BYTE), 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" NUMBER(11,0), 
	"NO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERLIST
--------------------------------------------------------

  CREATE TABLE "HR"."USERLIST" 
   (	"EMAIL" VARCHAR2(100 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"NICK" VARCHAR2(100 BYTE), 
	"PHONE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "HR"."FAQ" 
   (	"NUM" NUMBER, 
	"SUB" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1500 BYTE), 
	"TYPE" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INNOPROJ
--------------------------------------------------------

  CREATE TABLE "HR"."INNOPROJ" 
   (	"NO" NUMBER(4,0), 
	"SUB" VARCHAR2(100 BYTE), 
	"SUB2" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(2500 BYTE), 
	"TAG" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "HR"."EVENT" 
   (	"NO" NUMBER(4,0), 
	"SUB" VARCHAR2(100 BYTE), 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"THUMBNAIL" VARCHAR2(2500 BYTE), 
	"BODYIMAGE" VARCHAR2(2500 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DELETEPAGE
--------------------------------------------------------

  CREATE TABLE "HR"."DELETEPAGE" 
   (	"EMAIL" VARCHAR2(100 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"NICK" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MYPAGE
SET DEFINE OFF;
REM INSERTING into HR.USERLIST
SET DEFINE OFF;
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('walrus524@gmail.com','sun123','����ҹ���',null);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('5555@naver.com','asdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('22222@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('33333@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('44444@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('55555@naver.com','asdfasdf','asdf',123);
REM INSERTING into HR.FAQ
SET DEFINE OFF;
REM INSERTING into HR.INNOPROJ
SET DEFINE OFF;
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (1,'������ ������','������ ���� ������! �ƴϸ� ������ 2�� ����','<img src="imgs/innoproj/01.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (2,'����ȯ�� ������','��Ҽ����� NO! ������ҽ� 100% ����ȯ��','<img src="imgs/innoproj/02.png" width="724" alt="">','#��������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (3,'���󸮺�','��¥ ����� ����! �湮�� ȸ���� ����� ��¥ ����','<img src="imgs/innoproj/03.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (4,'ȸ���� ������','���� ������ ī��/���� ��� ���� ȸ���� ����','<img src="imgs/innoproj/04.png" width="724" alt="">','#��������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (5,'Ÿ�Ӽ���','���� �̽ð�! ���� ���� �ִ� 50%���� Ư��','<img src="imgs/innoproj/05.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (6,'�̸����� ����','�ִ� 90�� ���ı��� �̸����� ����','<img src="imgs/innoproj/06.png" width="724" alt="">','#���ھ����ִ�');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (7,'360�� VR ��������','���忡�� ���� ���� 360�� �ǰ����� ��������','<img src="imgs/innoproj/07.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (8,'���ڿ��� ����','����߰� ���� �ִ� 7�ϰ� ���ڿ��� ����','<img src="imgs/innoproj/08.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (9,'���Ƚɹ�ȣ','���� ��ȭ��ȣ�� ������ �����ȣ�� ��ȯ�� ���ҿ� ����','<img src="imgs/innoproj/09.png" width="724" alt="">','#���ھ�������');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (10,'�̸�����Ư�� & Ÿ��Ư��','�̸� �����ص�, �ʰ� �����ص� ���� Ư�� ����','<img src="imgs/innoproj/10.png" width="724" alt="">
',null);
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (11,'�Ƚɿ�����','���۽����� ������� ��, �� ���� ��ȼ��� ����','<img src="imgs/innoproj/11-1.jpg" width="724" alt="">
<img src="imgs/innoproj/11-2.jpg" width="724" alt="">
<img src="imgs/innoproj/11-3.jpg" width="724" alt="">
<img src="imgs/innoproj/11-4.jpg" width="724" alt="">','#���ھ�������');
REM INSERTING into HR.EVENT
SET DEFINE OFF;
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (1,'TEST0',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/01.jpg','imgs/event/01_1.jpg');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (2,'TEST1',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/02.jpg','imgs/event/02_1.png');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (3,'TEST2',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/03.png','imgs/event/03_1.jpg');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (4,'TEST3',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/04.jpg','imgs/event/04_1.jpg');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (5,'TEST4',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/05.jpg','imgs/event/05_1.png');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (6,'TEST5',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/06.png','imgs/event/06_1.jpg');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (7,'TEST6',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),'imgs/event/07.jpg','imgs/event/07_1.jpg');
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (8,'TEST7',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (9,'TEST8',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (10,'TEST9',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (11,'TEST10',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (12,'TEST11',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (13,'TEST12',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (14,'TEST13',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (15,'TEST14',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (16,'TEST15',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (17,'TEST16',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (18,'TEST17',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (19,'TEST18',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (20,'TEST19',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (21,'TEST20',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (22,'TEST21',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (23,'TEST22',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (24,'TEST23',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (25,'TEST24',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (26,'TEST25',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (27,'TEST26',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (28,'TEST27',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (29,'TEST28',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (30,'TEST29',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (31,'TEST30',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (32,'TEST31',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (33,'TEST32',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (34,'TEST33',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (35,'TEST34',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (36,'TEST35',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (37,'TEST36',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (38,'TEST37',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (39,'TEST38',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (40,'TEST39',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (41,'TEST40',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (42,'TEST41',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (43,'TEST42',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (44,'TEST43',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (45,'TEST44',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (46,'TEST45',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (47,'TEST46',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (48,'TEST47',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (49,'TEST48',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (50,'TEST49',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (51,'TEST50',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (52,'TEST51',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (53,'TEST52',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (54,'TEST53',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (55,'TEST54',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (56,'TEST55',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (57,'TEST56',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (58,'TEST57',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (59,'TEST58',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (60,'TEST59',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (61,'TEST60',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (62,'TEST61',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (63,'TEST62',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (64,'TEST63',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (65,'TEST64',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (66,'TEST65',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (67,'TEST66',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (68,'TEST67',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (69,'TEST68',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
Insert into HR.EVENT (NO,SUB,STARTDATE,ENDDATE,THUMBNAIL,BODYIMAGE) values (70,'TEST69',to_date('19/09/03','RR/MM/DD'),to_date('19/09/04','RR/MM/DD'),null,null);
REM INSERTING into HR.DELETEPAGE
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "HR"."EVENT" MODIFY ("NO" NOT NULL ENABLE);
