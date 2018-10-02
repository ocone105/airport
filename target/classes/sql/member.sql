drop table member;

create table member(
id varchar2(30) primary key,
pwd varchar2(200),
name varchar2(15),
phone varchar2(15),
email varchar2(30),
state varchar2(2),
email_alarm varchar2(5),
sms_alarm varchar2(5),
role varchar2(15)
);

insert into member values('air', 'f8d397a33fcb9725db96501e653bf3cfa4455c5639482b9936c22b221634d659', '관리자', null, null, 1, null, null, 'ROLE_ADMIN');

//air 계정 비밀번호: port
//state: 탈퇴처리-0 기본-1 카카오-2
