drop table member;

create table member(
id varchar2(30) primary key,
pwd varchar2(20),
name varchar2(15),
phone varchar2(15),
email varchar2(30),
state varchar2(2),
email_alarm varchar2(5),
sms_alarm varchar2(5),
role varchar2(15)
);

insert into member values('air', 'port', '관리자', null, null, 1, null, null, 'role_admin')
//state: 탈퇴처리-0 기본-1 카카오-2 네이버-3

