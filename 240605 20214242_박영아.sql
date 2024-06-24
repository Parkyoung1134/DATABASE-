select count(*)
from 학생;

select count(키) as '키 정보 있는 학생의 수'
from 학생
where 이름 like '임%';

select count(*)
from 학생
where 이름 like '임%' and 키 is not null;

select avg(중간성적) as '중간성적평균'
from 수강
where 과목번호 = 1;

select 과목번호, avg(기말성적) as '기말성적평균'
from 수강
group by 과목번호;


select 학과번호, 학년, count(*) as '인원수', avg(키) as '평균키'
from 학생
group by 학과번호, 학년;

select 과목번호, 기말성적, avg(기말성적)
from 수강
group by 과목번호;

select 기말성적
from 수강
group by 과목번호;

select avg(기말성적) as '기말성적평균'
from 수강
group by 과목번호;

select 과목번호, count(*) as '등록학생수', avg(기말성적) as '기말성적평균'
from 수강
group by 과목번호
having count(*) >= 5;

select 학생.번호, 학생.이름, 학과.이름
from 학과, 학생
where 학과.번호 = 학생.학과번호;

select 학생.번호, 학생.이름, 학과.이름
from 학과 inner join 학생
on 학과.번호 = 학생.학과번호;

select s.번호, s.이름, d.이름
from 학과 as d, 학생 as s
where d.번호 = s.번호;

select s.번호, s.이름, d.이름
from 학과 as d inner join 학생 as s
on d.번호 = s.번호;
