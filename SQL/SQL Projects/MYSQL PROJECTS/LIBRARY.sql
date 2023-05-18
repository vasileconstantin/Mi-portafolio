create table readers 
(
 reader_id varchar(6),
 fname varchar(30),
 mname varchar(30),
 ltname varchar(30),  
 city varchar(15),
 mobileno varchar(10),
 occupation varchar(10),
 dob DATE,
 CONSTRAINT readers_pk PRIMARY KEY(reader_id)
 );
 
 
 
 
 
 
 
 
 
INSERT INTO readers values('C0001','Ramesh','Chandra', 'Sharma','Delhi',948000011, 'teacher', '1988-08-11');
INSERT INTO readers values('C0002','Alex','lopes', 'rodriguez','Madrid',948000012, 'footballer', '1968-09-11');
INSERT INTO readers values('C0003','Jaunma','cons', 'left','Paris',948000003, 'teacher', '1998-09-11');
INSERT INTO readers values('C0004','Jusep','pedrerol', 'pepi','Delhi',948000040, 'student', '1978-09-11');
INSERT INTO readers values('C0005','Jaon','costa', 'militao','Barcelona',948050000, 'teacher', '1988-09-11');
INSERT INTO readers values('C0006','Ale','lopez', 'maris','Girona',948005000, 'developer', '1988-09-01');
INSERT INTO readers values('C0007','Pepe','cunde', 'benzema','Lucern',948600000, 'teacher', '1998-09-21');
INSERT INTO readers values('C0008','Sergio','ramos', 'rodriguez','Berlin',948080000, 'teacher', '1978-10-11');
INSERT INTO readers values('C0009','Dani','Chandra', 'carvajal','Paris',948090000, 'pilot', '1998-12-31');
INSERT INTO readers values('C00010','Militao','alberto', 'ramireaz','Londres',948000800, 'teacher', '1977-09-11');


select * from readers;

 
CREATE TABLE Book
(
bid varchar(6),
bname VARCHAR(40),
bdomain VARCHAR(30),
CONSTRAINT book_bid_pk PRIMARY KEY(bid)
);
 
INSERT INTO book VALUES('B00001', 'The Cat in the Hat','Story');
INSERT INTO book VALUES('B00002', 'Charlie and the Chocolate Factory','Story');
INSERT INTO book VALUES('B00003', 'The very hungry caterpiller','Story');

CREATE TABLE active_readers
(
	account_id VARCHAR(6),
    reader_id VARCHAR(6),
    bid VARCHAR(6),
	atype VARCHAR(10),
    astatus VARCHAR(10),
    CONSTRAINT activereaders_acnumber_pk PRIMARY KEY(account_id),
    CONSTRAINT acccount_readerid_fk FOREIGN KEY(reader_id) REFERENCES readers(reader_id),
    CONSTRAINT account_bid_fk FOREIGN KEY(bid) REFERENCES book(bid)
    );
    
SET FOREIGN_KEY_CHECKS=1;
select * from active_readers;

INSERT INTO active_readers VALUES('A00001','C00001', 'B00001','Premium','Active');
INSERT INTO active_readers VALUES('A00002','C00003', 'B00004','Regular','Active');
INSERT INTO active_readers VALUES('A00003','C00002', 'B00001','Premium','Active'); 
INSERT INTO active_readers VALUES('A00004','C00002', 'B00004','Premium','Active');
INSERT INTO active_readers VALUES('A00005','C00009', 'B00001','Premium','Suspended'); 
INSERT INTO active_readers VALUES('A00006','C00001', 'B00001','Premium','Active');
INSERT INTO active_readers VALUES('A00007','C00003', 'B00002','Premium','Active');
INSERT INTO active_readers VALUES('A00008','C00005', 'B00001','Regular','Terminated');
INSERT INTO active_readers VALUES('A00009','C00005', 'B00002','Premium','Terminated');
INSERT INTO active_readers VALUES('A00010','C00001', 'B00009','Regular','Active');





CREATE TABLE bookisue_details
( 
 issuenumber VARCHAR(6),
 account_id VARCHAR(6),
 bid VARCHAR(20),
 bookname VARCHAR(50),
 number_of_book_issued INT(7),
 CONSTRAINT trandetails_tnumber_pk PRIMARY KEY(issuenumber),
 CONSTRAINT trandetails_acnumber_fk FOREIGN KEY(account_id) REFERENCES active_readers(account_id)
 );
 
 
 SET FOREIGN_KEY_CHECKS = 1;
 
 INSERT INTO bookisue_details VALUES('A00008','C00005', 'B00001','The alchemist',5);
 INSERT INTO bookisue_details VALUES('A00005','C00002', 'B00001','The alchemist',9);
 INSERT INTO bookisue_details VALUES('A00002','C00005', 'B00001','Mindset',7);
 INSERT INTO bookisue_details VALUES('A00001','C00000', 'B00001','The alchemist',4);
 
 
 SELECT * FROM bookisue_details;
 
 SELECT * FROM active_readers;
 
 SELECT * FROM active_readers ;
 
 SELECT count(account_id) from active_readers where atype = 'Premium';