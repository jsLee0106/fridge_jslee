drop table recipe;
select * from recipe;
create table recipe(
   recipe_no        	number               primary key,
   title               		varchar2(50)      not null,
   contents         	varchar2(4000)      not null,
   post_date         	date      not null,
   nick               		varchar2(50)      not null,
   cooking_time   	number               not null,
   good               	number               default 0,
   bad               		number               default 0,
   hits               		number             default 0,
   member_id      	varchar2(50)      not null,
   constraint fk_member_id foreign key(member_id) references member(member_id)
)
drop sequence recope_seq;
create sequence recipe_seq nocache; 

drop table member;
select * from member;
create table member(
   member_id varchar2(50) primary key,
   password varchar2(50) not null,
   nick varchar2(50) not null,
   name varchar2(50) not null,
   email varchar2(50) not null,
   gender number default 0,
   answer varchar2(50) not null,
   member_level number default 0,
   register_date date not null,
   love number default 0
)

insert into member(member_id, password, nick, name, email, gender, answer, member_level, register_date, love)
values('java', '1234', 'abcd', '한지민', 'java@gmail.com', 0, '파스타', 5, sysdate, 0 )

insert into recipe(recipe_no,   title, contents, post_date, nick, cooking_time, good, bad, hits, member_id)
values(recipe_seq.nextval, '안녕하세요', '안녕하세요 반갑습니다.', sysdate, '한지민', '30', 0,0,0,'java');