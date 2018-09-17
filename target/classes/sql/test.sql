Drop table BOARD;
create table BOARD(
	boardno number,
	ctg varchar2(30),
	title varchar2(100),
	txt varchar2(1000),
	boarddate date,
	hits number,
	attach varchar2(100),
	empno number);
	
create sequence boardno_seq;
select * from BOARD