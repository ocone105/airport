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

Drop table BOARDCMT;
create table BOARDCMT(
	cmtno number,
	cmttxt varchar2(500),
	cmtdate	date,
	boardno	number,
	empno number);
create sequence cmtno_seq;
select * from BOARDCMT;

insert into BOARDCMT values(cmtno_seq.nextval, 55, sysdate, 1, 1);
select * from BOARDCMT where boardno=1 order by cmtdate desc