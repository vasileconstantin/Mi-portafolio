create DATABASE BMS_DB1;
USE BMS_DB1;
SHOW DATABASES

-- CUSTOMER_PERSONAL_INFO

CREATE TABLE CUSTOMER_PERSONAL_INFO 
(
CUSTOMER_ID VARCHAR(5),
CUSTOMER_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GUARDIAN_NAME VARCHAR(30),
ADDRESS VARCHAR(50),
CONTACT_NO BIGINT(10),
MAIL_ID VARCHAR(30),
GENDER CHAR(1),
MARITAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NO VARCHAR(20),
CITIZENSHIP VARCHAR(10),
CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
);

SHOW TABLES;







CREATE TABLE CUSTOMER_REFERENCE_INFO
(
	CUSTOMER_ID VARCHAR(5),
	REFERENCE_ACC_NAME VARCHAR(20),
	REFERENCE_ACC_NO BIGINT(16),
	REFERENCE_ACC_ADDRESS VARCHAR(50),
	RELATION VARCHAR(25),
	CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
	CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID) 
    );


show tables;

-- BANK INFO

CREATE TABLE BANK_INFO
(
 IFSC_CODE VARCHAR(15),
 BANK_NAME VARCHAR(25),
 BRANCH_NAME VARCHAR(25),
 CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
 );
   
 
CREATE TABLE ACCOUNT_INFO
(
ACCOUNT_NO BIGINT(16),
CUSTOMER_ID VARCHAR(5),
ACCOUNT_TYPE VARCHAR(10),
REGISTRATION_DATE DATE,
ACTIVATION_DATE DATE,
IFSC_CODE VARCHAR(10),
INTEREST DECIMAL(7,2),
INITIAL_DEPOSIT BIGINT(10),
CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID),
CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE) REFERENCES BANK_INFO(IFSC_CODE)
);


show tables;


-- BANK_INFO



INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME, BRANCH_NAME) VALUES ('NDNDIEI','EIIDF','EJDI22JEDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME, BRANCH_NAME) VALUES ('N3DIEI','EI5F','EJDIJ11EDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME, BRANCH_NAME) VALUES ('GDNDIEI','E4DF','EJDI89JEDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME, BRANCH_NAME) VALUES ('NDRGIEI','EIF','EJDI8JEDI');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME, BRANCH_NAME) VALUES ('NDUUIEI','IDF','EJEDI');
 SELECT * FROM BANK_INFO;
 
 
-- CUSTOMER_PERSONAL_INFO


INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE ,ID_DOC_NO ,CITIZENSHIP) VALUES ('1', 'vasile', '1997-12-27', 'guardia real', 'san velaquez','100','vasid@gfail.com','m','single','dni','44333','españa');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE ,ID_DOC_NO ,CITIZENSHIP) VALUES ('2', 'vasele', '1998-12-22', 'gudrdia real', 'san velaquz','550','vasid@gmail.chm','m','single','dni','44333','españa');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE ,ID_DOC_NO ,CITIZENSHIP) VALUES ('3', 'vas2le', '1944-12-04', 'g3ardia real', 'san velaqz','40','vasid@gmail.clm','m','single','dni','44333','españa');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARITAL_STATUS,IDENTIFICATION_DOC_TYPE ,ID_DOC_NO ,CITIZENSHIP) VALUES ('4', 'vasi4e', '1945-09-09', 'guarria real', 'san veez','10','vasid@gmail.cqm','m','single','dni','44333','españa');

SELECT * FROM CUSTOMER_PERSONAL_INFO;


-- CUSTOMER_REFERENCE

show tables;





