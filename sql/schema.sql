
DROP TABLE UIP_CENTER;

CREATE TABLE UIP_CENTER (
		id NUMBER(10 , 0) NOT NULL,
		CODE VARCHAR2(20) NOT NULL,
		NAME VARCHAR2(20),
		CHIEF VARCHAR2(20),
		ADDRESS VARCHAR2(80),
		PHONE VARCHAR2(20)
	);

ALTER TABLE UIP_CENTER ADD CONSTRAINT UIP_CENTER_PK PRIMARY KEY (id);

create sequence UIP_CENTER_S
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;


--<ScriptOptions statementTerminator=";"/>

DROP TABLE UIP_REGION;

CREATE TABLE UIP_REGION (
		id NUMBER(10 , 0) NOT NULL,
		UIP_CENTER_id NUMBER(10 , 0) NOT NULL,
		CODE VARCHAR2(20) NOT NULL,
		REGION_CODE VARCHAR2(20) NOT NULL,
		NAME VARCHAR2(20),
		CHIEF VARCHAR2(20),
		ADDRESS VARCHAR2(80)
	);

ALTER TABLE UIP_REGION ADD CONSTRAINT UIP_REGION_PK PRIMARY KEY (id);

create sequence UIP_REGION_S
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;
