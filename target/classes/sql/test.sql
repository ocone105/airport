Drop table BOARD
create sequence boardno_seq
create table BOARD(
	boardno number,
	ctg varchar2(30),
	title varchar2(100),
	txt varchar2(1000),
	boarddate date,
	hits number,
	fileName varchar2(100),
	empno number)
	
select * from BOARD