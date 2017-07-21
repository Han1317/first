 --���

  CREATE TABLE "MEMBER" 
   (	"M_ID" VARCHAR2(10 BYTE), 
	"M_PW" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"M_EMAIL" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"M_NICK" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"M_REG_DATE" DATE DEFAULT sysdate, 
	 PRIMARY KEY ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ; 
commit;



--�Խ���
CREATE TABLE "BOARD" 
   (	"B_NUM" NUMBER, 
	"B_SUBJECT" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"B_CONTENT" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
	"B_RC" NUMBER DEFAULT 0, 
	"B_PW" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"B_REG_DATE" DATE NOT NULL ENABLE, 
	"B_PART" VARCHAR2(10 BYTE), 
	"M_ID" VARCHAR2(10 BYTE), 
	"B_STAR" VARCHAR2(10 BYTE), 
	 PRIMARY KEY ("B_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("M_ID")
	  REFERENCES "MEMBER" ("M_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;



--���
  CREATE TABLE "COMMENT_BOARD" 
   (	"C_NUM" NUMBER, 
	"B_NUM" NUMBER NOT NULL ENABLE, 
	"M_ID" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"C_DATE" DATE DEFAULT sysdate, 
	"C_REF" NUMBER DEFAULT 0, 
	"C_RE_STEP" NUMBER DEFAULT 0, 
	"C_RE_LEVEL" NUMBER DEFAULT 0, 
	"C_CONTENT" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
	 PRIMARY KEY ("C_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("B_NUM")
	  REFERENCES "BOARD" ("B_NUM") ENABLE, 
	 FOREIGN KEY ("M_ID")
	  REFERENCES "MEMBER" ("M_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
commit;



insert into member values
('ab','1234','ab@naver.com','�޸���',sysdate);
insert into member values
('cd','1234','cd','ȣ����',sysdate);
insert into member values
('ef','1234','ef','bsdf3',sysdate);
insert into member values
('gh','1234','gf','īī',sysdate);
insert into member values
('ik','1234','wer','��',sysdate);
insert into member values
('lm','1234','asg','�����',sysdate);
insert into member values
('no','1234','asf','��',sysdate);
insert into member values
('pq','1234','wef','�ٳ���',sysdate);
insert into member values
('st','1234','sag','����',sysdate);
insert into member values
('uv','1234','gasd','asdf',sysdate);
select * from member;
select * from board;
insert into board values
(1,'����153','��÷',0,'1234',sysdate,'����','lm',3);
insert into board values
(2,'����235','��÷',0,'1234',sysdate,'����','lm',4);
insert into board values
(3,'����26234','��÷',0,'1234',sysdate,'����','pq',4);
insert into board values
(4,'å235','��÷',0,'1234',sysdate,'å','gh',2);
insert into board values
(5,'å23324','��÷',0,'1234',sysdate,'å','lm',5);
insert into board values
(6,'toto','��÷',0,'1234',sysdate,'����','lm',3);
insert into board values
(7,'gkdldy','����',0,'1234',sysdate,'����','no',2);
insert into board values
(8,'���̿�','12341',0,'1234',sysdate,'����','gh',5);
insert into board values
(9,'�����̿�','����ٽ�',0,'1234',sysdate,'����','pq',4);
insert into board values
(10,'�����̿�','���',0,'1234',sysdate,'��ǰ','ik',2);
insert into board values
(11,'�����̿�','���ȣȣ',0,'1234',sysdate,'��ǰ','ef',5);
insert into board values
(12,'����','����',0,'1234',sysdate,'å','ef',1);
insert into board values
(13,'sbasf3','153������',0,'1234',sysdate,'å','ab',3);
insert into board values
(14,'����1','����������',0,'1234',sysdate,'����','cd',2);
insert into board values
(15,'����6','����',0,'1234',sysdate,'����','uv',3);
insert into board values
(16,'��������','��������',0,'1234',sysdate,'����','st',5);
insert into board values
(17,'����3','��������',0,'1234',sysdate,'����','uv',5);
insert into board values
(18,'����4','��������',0,'1234',sysdate,'����','st',5);
insert into board values
(19,'����3','��������',0,'1234',sysdate,'����','cd',5);
insert into board values
(20,'����2','��������',0,'1234',sysdate,'����','ef',5);
insert into board values
(21,'å3','��������',0,'1234',sysdate,'å3','ik',5);
insert into board values
(22,'����','����',0,'1234',sysdate,'å','ef',1);
insert into board values
(23,'��ǰ3','����',0,'1234',sysdate,'��ǰ','st',4);
insert into board values
(24,'��ǰ2','����',0,'1234',sysdate,'��ǰ','uv',3);
insert into board values
(25,'��ǰ1','����',0,'1234',sysdate,'��ǰ','cd',2);
insert into board values
(26,'����123','����',0,'1234',sysdate,'����','ab',5);
insert into board values
(27,'����89','����',0,'1234',sysdate,'����','ef',3);
insert into board values
(28,'����7','����',0,'1234',sysdate,'����','gh',3);
insert into board values
(29,'����10','����',0,'1234',sysdate,'����','gh',2);
insert into board values
(30,'����8','����',0,'1234',sysdate,'����','ik',1);
insert into board values
(31,'����99','����',0,'1234',sysdate,'����','ef',2);
insert into board values
(32,'����353','����',0,'1234',sysdate,'����','ef',5);
insert into board values
(33,'����23','����',0,'1234',sysdate,'����','ef',4);
insert into board values
(34,'����787','����',0,'1234',sysdate,'����','ef',1);
insert into board values
(35,'����12','����',0,'1234',sysdate,'����','ef',2);
insert into board values
(36,'����65','����',0,'1234',sysdate,'����','ef',3);
insert into board values
(37,'����999','����',0,'1234',sysdate,'����','ef',2);
insert into board values
(38,'����111','����',0,'1234',sysdate,'����','ef',4);
insert into board values
(39,'����333','����',0,'1234',sysdate,'����','ef',4);
insert into board values
(40,'����534','����',0,'1234',sysdate,'����','ef',5);

commit;