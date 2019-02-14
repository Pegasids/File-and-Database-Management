drop table movie;
create table movie(mname char(50), mnum integer, primary key(mnum));
insert into movie values('Batman',1);
insert into movie values('spiderman',2);
insert into movie values('superman',3);
commit;
select * from movie;
