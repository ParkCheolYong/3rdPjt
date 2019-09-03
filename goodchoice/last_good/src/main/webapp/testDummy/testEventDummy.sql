--------------------------------------------------------
--  파일이 생성됨 - 화요일-9월-03-2019   
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
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('walrus524@gmail.com','sun123','사우디쌀벌레',null);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('5555@naver.com','asdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('22222@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('33333@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('44444@naver.com','asdfasdf','asdf',123);
Insert into HR.USERLIST (EMAIL,PW,NICK,PHONE) values ('55555@naver.com','asdfasdf','asdf',123);
REM INSERTING into HR.FAQ
SET DEFINE OFF;
REM INSERTING into HR.INNOPROJ
SET DEFINE OFF;
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (1,'최저가 보상제','여기어때는 국내 최저가! 아니면 차액의 2배 보상','<img src="imgs/innoproj/01.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (2,'전액환불 보장제','취소수수료 NO! 예약취소시 100% 전액환불','<img src="imgs/innoproj/02.png" width="724" alt="">','#국내최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (3,'리얼리뷰','가짜 리뷰는 없다! 방문한 회원만 남기는 진짜 리뷰','<img src="imgs/innoproj/03.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (4,'회원가 보장제','현장 결제시 카드/현금 모두 여기어때 회원가 보장','<img src="imgs/innoproj/04.png" width="724" alt="">','#국내최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (5,'타임세일','지금 이시간! 남은 객실 최대 50%할인 특가','<img src="imgs/innoproj/05.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (6,'미리예약 서비스','최대 90일 이후까지 미리예약 가능','<img src="imgs/innoproj/06.png" width="724" alt="">','#숙박어플최대');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (7,'360도 VR 객실정보','현장에서 직접 보듯 360도 실감나는 가상현실','<img src="imgs/innoproj/07.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (8,'연박예약 서비스','요금추가 없이 최대 7일간 연박예약 가능','<img src="imgs/innoproj/08.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (9,'고객안심번호','고객의 전화번호를 안전한 가상번호로 변환해 숙소에 전달','<img src="imgs/innoproj/09.png" width="724" alt="">','#숙박어플최초');
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (10,'미리예약특가 & 타임특가','미리 예약해도, 늦게 예약해도 할인 특가 제공','<img src="imgs/innoproj/10.png" width="724" alt="">
',null);
Insert into HR.INNOPROJ (NO,SUB,SUB2,CONTENT,TAG) values (11,'안심예약제','갑작스러운 예약취소 시, 더 좋은 대안숙소 제공','<img src="imgs/innoproj/11-1.jpg" width="724" alt="">
<img src="imgs/innoproj/11-2.jpg" width="724" alt="">
<img src="imgs/innoproj/11-3.jpg" width="724" alt="">
<img src="imgs/innoproj/11-4.jpg" width="724" alt="">','#숙박어플최초');
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
