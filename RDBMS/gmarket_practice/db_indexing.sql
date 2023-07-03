use sqlDB;

show index from userTbl;
-- 보조 인덱스를 활용하면 자주사용하는 컬럼의 경우 검색이 빨라지는 효과를 얻는다 alter말고도 DDL을 사용할때도 보조인덱스 생성이가능하다
show index from buytbl;
alter table usertbl add constraint testDate unique(mdate);

show index from usertbl;
desc usertbl;

create index idx_name on usertbl(name);
show index from usertbl;
alter table userTbl add index idx_addr(addr);
show index from usertbl;

create index idx_group on buytbl(groupName);
show index from buytbl;

create index idx_prod on buytbl(prodName);
show index from buytbl;


alter table usertbl drop index idx_name;
show index from usertbl;
alter table usertbl drop index idx_usertbl_name;
show index from usertbl;
alter table usertbl drop index idx_userTbl_addr;
show index from usertbl;
alter table usertbl drop index idx_addr;
show index from usertbl;

