--------------------------------------------------------
--  File created - Thursday-October-13-2016   
--------------------------------------------------------
DROP TABLE "EMP";
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "EMP" 
   (	"EMP_ID" NUMBER, 
	"MAN_ID" NUMBER, 
	"NAME" VARCHAR2(20)
   )
REM INSERTING into EMP
SET DEFINE OFF;
Insert into EMP (EMP_ID,MAN_ID,NAME) values (1,null,'A');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (2,1,'B');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (3,1,'C');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (4,1,'D');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (5,1,'E');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (6,2,'F');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (7,2,'G');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (8,2,'H');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (9,3,'I');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (10,3,'J');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (11,4,'K');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (12,4,'L');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (13,5,'M');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (14,6,'N');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (15,6,'O');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (16,7,'P');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (17,9,'Q');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (18,9,'R');
Insert into EMP (EMP_ID,MAN_ID,NAME) values (19,11,'S');
--------------------------------------------------------
--  DDL for Index EMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMP_PK" ON "EMP" ("EMP_ID")
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD CONSTRAINT "EMP_PK" PRIMARY KEY ("EMP_ID") ENABLE
  ALTER TABLE "EMP" MODIFY ("NAME" NOT NULL ENABLE)
  ALTER TABLE "EMP" MODIFY ("EMP_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "EMP" ADD CONSTRAINT "EMP_MAN_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "EMP" ("EMP_ID") ENABLE
