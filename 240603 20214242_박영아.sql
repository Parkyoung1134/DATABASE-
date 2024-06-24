# 2024. 06.03

# 테이블에 저장된 데이터 중에서 원하는 데이터만 선택적으로 검색
select *
from 학생
where 번호 = 1;

# 학생 테이블에서 키가 165 미만인 학생에 대해서만 모든 열을 검색
select *
from 학생
where 키 < 165;

# 학생 테이블에서 1학년이면서 키가 170 이상인 학생에 대해서만 이름, 별명, 주소, 키, 몸무게를 검색
select 이름, 별명, 주소, 키, 몸무게
from 학생
where 학년 = 1 or 키 > 170;

# 학생 테이블에서 체중이 45부터 50 사이인 학생의 이름, 주소, 키, 몸무게 열에 저장된 데이터를 출력
select 이름, 별명, 주소, 키, 몸무게
from 학생
where 몸무게 >= 45 and 몸무게 <= 50;

select 이름, 별명, 주소, 키, 몸무게
from 학생
where 몸무게 not between 45 and 50;

# in 연산자를 사용해 학생 테이블에서 2학년과 3학년 학생의 이름, 번호, 학년을 검색
select 이름, 번호, 학년
from 학생
where 학년 in (2, 3);

# 학생 테이블에서 박씨 겅을 가진 학생의 모든 열에 저장된 데이터를 출력
select *
from 학생
where 이름 like '박%';

# 학생 테이블에서 성이 김, 이, 박씨인 학생의 모든 열에 저장된 데이터를 검색
select*
from 학생
where 이름 like '[김이박]%';

select * from 학생 where 이름 like '김%'
union
select * from 학생 where 이름 like '이%'
union
select * from 학생 where 이름 like '박%';

# 학생 테이블에서 성이 김, 이, 박씨가 아닌 학생의 모든 열에 저장된 데이터를 검색
select*
from 학생
where 이름 like '[^김이박]%';

# 학생 테이블에서 이름, 별명, 학년, 주소를 검색
select 이름, 별명, 학년, 주소
from 학생;

# 학생 테이블에서 별명이 없는 학생의 이름, 별명, 학년, 주소를 검색
select 이름, 별명, 학년, 주소
from 학생
where 별명 is null;

# 학생 테이블에서 체중 데이터가 있는 학생의 이름, 별명, 학년, 키, 몸무게를 검색
select 이름, 별명, 학년, 키, 몸무게
from 학생
where 몸무게 is not null and 몸무게 > 0;

# 학생 테이블에서 모든 열에 저장된 데이터를 검색하되, 이름 가나다 순으로 정렬하여 출력
select*
from 학생
order by 이름;

select*
from 학생
order by 키 desc;

select*
from 학생
where 학년 = 1
order by 키;

# 학생 테이블에서 몸무게가 적은 순으로 이름, 키, 몸무게를 검색
select 이름, 키, 몸무게
from 학생
order by 몸무게;

# 1학년 학생의 이름, 별명, 학년, 키, 몸무게를 검색하되, 키를 기준으로 먼저 내림차순 정렬한 다음에 키가 같은 학생에 한하여 다시 몸무게를 기준으로 오름차순 정렬하여 출력
select 이름, 별명, 학년, 키, 몸무게
from 학생
where 학년 = 1
order by 키 desc, 몸무게;

# 학생 테이블에서 학번, 이름, 주소를 검색하되, select 절의 두 번째 열인 이름을 오름차순으로 정렬
select 번호, 이름, 주소
from 학생
order by 2;

