--------------------------------------------------------
--  File created - Monday-April-06-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COMPANIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COMPANIES" 
   (	"COMPANY_ID" NUMBER(10,0), 
	"COMPANY_NAME" VARCHAR2(10 BYTE) DEFAULT NULL, 
	"REVENUE_MILLIONS" NUMBER(10,0) DEFAULT NULL, 
	"COUNTRY_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.COMPANIES
SET DEFINE OFF;
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (1,'a',20,2);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (2,'b',25,5);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (3,'c',31,7);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (4,'d',47,1);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (5,'e',25,3);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (6,'f',19,3);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (7,'g',21,2);
Insert into SYSTEM.COMPANIES (COMPANY_ID,COMPANY_NAME,REVENUE_MILLIONS,COUNTRY_ID) values (8,'h',20,1);
--------------------------------------------------------
--  DDL for Index SYS_C007362
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007362" ON "SYSTEM"."COMPANIES" ("COMPANY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table COMPANIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPANIES" ADD PRIMARY KEY ("COMPANY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."COMPANIES" MODIFY ("COMPANY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMPANIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPANIES" ADD CONSTRAINT "COMPANIES_IBFK_1" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "SYSTEM"."COUNTRIES" ("COUNTRY_ID") ENABLE;
