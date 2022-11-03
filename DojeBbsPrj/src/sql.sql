create table board(
	bno number(10), 
	writer varchar2(40),
	title varchar2(100),
	cont varchar2(4000),
	wdate date,
	primary key(bno)
)

insert into BOARD values ( 
'1', '민경석', '질뢰쾌우', '저는 잘먹어요', sysdate);

insert into BOARD values ( 
'2', '임토토', '엄태웅', '성전문의', sysdate);
insert into BOARD values ( 
'3', '위준혁', 'test', '게시글 테스트', sysdate);
insert into BOARD values ( 
'4', '임토웅', '전현철', '영혼의 파트너', sysdate);

select * from BOARD

create table member(
	name varchar2(20), 
	id varchar2(15),
	pw varchar2(20),
	tel number(11),
	chim varchar2(100),
	primary key (id)
)

alter table member modify tel varchar2(11);

insert into member values (
 '임토토', 'ltt', '6974', '01012345678', 'tft');

select * from member

drop table member

 
drop table member
drop table member;

select  * from board


select max (bno) from BOARD



update 
set 
where 
