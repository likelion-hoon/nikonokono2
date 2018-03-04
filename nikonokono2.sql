-- nikonokono2 sql sentence

# posts 테이블에 user_id 컬럼 추가 alter
alter table posts add user_id bigint(20);

# posts 테이블의 user_id 컬럼을 외래키로 만들기 
alter table posts add foreign key(user_id) references users(id);