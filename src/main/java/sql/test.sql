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

insert into BOARDCMT values(cmtno_seq.nextval, '테스트중', sysdate, 12, 111)

Drop table PFINFO;
 create table PFINFO (
 pfinfono number,
 pfloc varchar2(100),
 pfname varchar2(100)
 );
 create sequence pfinfono_seq;
insert into PFINFO values(pfinfono_seq.nextval, '37.450347, 126.454258', 'GATE1');
insert into PFINFO values(pfinfono_seq.nextval, '37.450280, 126.453037', 'GATE2');
insert into PFINFO values(pfinfono_seq.nextval, '37.449976, 126.451739', 'GATE3');
insert into PFINFO values(pfinfono_seq.nextval, '37.448835, 126.449808', 'GATE4');
insert into PFINFO values(pfinfono_seq.nextval, '37.448017, 126.448981', 'GATE5');
insert into PFINFO values(pfinfono_seq.nextval, '37.447149, 126.448445', 'GATE6');
insert into PFINFO values(pfinfono_seq.nextval, '37.447149, 126.448445', 'GATE6');

select * from PFINFO;

