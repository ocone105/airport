-- 게시판
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

--게시판댓글
Drop table BOARDCMT;
create table BOARDCMT(
	cmtno number,
	cmttxt varchar2(500),
	cmtdate	date,
	boardno	number,
	empno number);
create sequence cmtno_seq;
select * from BOARDCMT;

--여객시설정보
Drop table PFINFO;
 drop sequence pfinfono_seq;
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

insert into PFINFO values(pfinfono_seq.nextval, '37.449359, 126.452629', 'INFO1');
insert into PFINFO values(pfinfono_seq.nextval, '37.448797, 126.451299', 'INFO2');
insert into PFINFO values(pfinfono_seq.nextval, '37.447933, 126.450151', 'INFO3');
insert into PFINFO values(pfinfono_seq.nextval, '37.450579, 126.452227', 'INFO4');
insert into PFINFO values(pfinfono_seq.nextval, '37.449786, 126.450414', 'INFO5');
insert into PFINFO values(pfinfono_seq.nextval, '37.448666, 126.448880', 'INFO6');

insert into PFINFO values(pfinfono_seq.nextval, '37.450293, 126.454588', 'SECURITY1');
insert into PFINFO values(pfinfono_seq.nextval, '37.446780, 126.448402', 'SECURITY2');

insert into PFINFO values(pfinfono_seq.nextval, '37.450176, 126.450836', 'BHS1');
insert into PFINFO values(pfinfono_seq.nextval, '37.449248, 126.449324', 'BHS2');

insert into PFINFO values(pfinfono_seq.nextval, '37.447002, 126.453423', 'Park1');
insert into PFINFO values(pfinfono_seq.nextval, '37.449185, 126.452168', 'BUS');

select * from PFINFO;

--시설근무팀
Drop table PFTEAM;
create table PFTEAM(
	pfinfono number,
	deptno varchar2(20),
	currentstaff number);
	
insert into PFTEAM values(1, 'abas002', 10);
insert into PFTEAM values(2, 'abas002', 20);
insert into PFTEAM values(3, 'abas002', 20);
insert into PFTEAM values(4, 'abas002', 20);
insert into PFTEAM values(5, 'abas002', 20);
insert into PFTEAM values(6, 'abas002',10);

insert into PFTEAM values(7, 'paps003', 2);
insert into PFTEAM values(8, 'paps003', 2);
insert into PFTEAM values(9, 'paps003', 2);
insert into PFTEAM values(10, 'paps003', 2);
insert into PFTEAM values(11, 'paps003', 2);
insert into PFTEAM values(12, 'paps003', 2);

insert into PFTEAM values(13, 'abas003', 10);
insert into PFTEAM values(14, 'abas003', 10);
insert into PFTEAM values(15, 'asbs002', 10);
insert into PFTEAM values(16, 'asbs002', 10);
insert into PFTEAM values(17, 'Pats002', 15);
insert into PFTEAM values(18, 'Pats001', 15);

select * from PFTEAM;

--여객시설관리테이블	
Drop table PF;
drop sequence pfno_seq;
create table PF (
 pfno number,
 pfinfono number,
 pfdate Date,
 pftxt varchar2(300),
 pfstaff number,
 deptno varchar2(20)
 );
create sequence pfno_seq;

select * from pf;


 
