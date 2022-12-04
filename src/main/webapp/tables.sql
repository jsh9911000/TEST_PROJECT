create table member(num number primary key, name varchar2(100) not null, userID varchar2(100) not null, userPWD varchar2(100) not null,
joinDate date);

create sequence member_seq;