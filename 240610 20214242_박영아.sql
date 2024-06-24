USE school;


select 학생.번호, 학생.이름, 학과.이름
from 학과 inner join 학생
on 학과.번호 = 학생.학과번호;

select s.번호, s.이름, d.이름
from 학과 as d inner join 학생 as s
on d.번호 = s.번호;

CREATE TABLE stadiumTBL
(
	stadium_id char(3),
	stadium_name varchar(30),
	seat_count int,
	primary key(stadium_id)
);

CREATE TABLE teamTBL
(
	team_id char(3),
	team_name varchar(30),
	region_name varchar(10),
	stadium_id char(3),
	primary key(team_id),
	foreign key(stadium_id) references stadiumTBL(stadium_id)
);

CREATE TABLE playerTBL
(
	player_id int,
	player_name varchar(30),
	team_id char(3),
	primary key(player_id),
	foreign key(team_id) references teamTBL(team_id)
);


INSERT INTO stadiumTBL VALUES('D03', '전주월드컵경기장', 28000);
INSERT INTO stadiumTBL VALUES('B02', '성남종합운동장', 27000);
INSERT INTO stadiumTBL VALUES('C06', '포항스틸야드', 25000);
INSERT INTO stadiumTBL VALUES('D01', '광양전용경기장', 20009);
INSERT INTO stadiumTBL VALUES('B05', '서울월드컵경기장', 66806);
INSERT INTO stadiumTBL VALUES('B01', '인천월드컵경기장', 35000);
INSERT INTO stadiumTBL VALUES('C05', '창원종합운동장', 27085);
INSERT INTO stadiumTBL VALUES('C04', '울산문수경기장', 46102);
INSERT INTO stadiumTBL VALUES('D02', '대전월드컵경기장', 41000);
INSERT INTO stadiumTBL VALUES('B04', '수원월드컵경기장', 50000);
INSERT INTO stadiumTBL VALUES('A02', '광주월드컵경기장', 40245);
INSERT INTO stadiumTBL VALUES('C02', '부산아시아드경기장', 30000);
INSERT INTO stadiumTBL VALUES('A03', '강릉종합경기장', 33000);
INSERT INTO stadiumTBL VALUES('A04', '제주월드컵경기장', 42256);
INSERT INTO stadiumTBL VALUES('A05', '대구월드컵경기장', 66422);
INSERT INTO stadiumTBL VALUES('F01', '대구시민경기장', 30000);
INSERT INTO stadiumTBL VALUES('F02', '부산시민경기장', 30000);
INSERT INTO stadiumTBL VALUES('F03', '일산경기장', 20000);
INSERT INTO stadiumTBL VALUES('F04', '마산경기장', 20000);
INSERT INTO stadiumTBL VALUES('F05', '안양경기장', 20000);

INSERT INTO teamTBL VALUES('K05', '현대모터스', '전북', 'D03');
INSERT INTO teamTBL VALUES('K08', '일화천마', '성남', 'B02');
INSERT INTO teamTBL VALUES('K03', '스틸러스', '포항', 'C06');
INSERT INTO teamTBL VALUES('K07', '드래곤즈', '전남', 'D01');
INSERT INTO teamTBL VALUES('K09', 'FC서울', '서울', 'B05');
INSERT INTO teamTBL VALUES('K04', '유나이티드', '인천', 'B01');
INSERT INTO teamTBL VALUES('K11', '경남FC', '경남', 'C05');
INSERT INTO teamTBL VALUES('K01', '울산현대', '울산', 'C04');
INSERT INTO teamTBL VALUES('K10', '시티즌', '대전', 'D02');
INSERT INTO teamTBL VALUES('K02', '삼성블루윙즈', '수원', 'B04');
INSERT INTO teamTBL VALUES('K12', '광주상무', '광주', 'A02');
INSERT INTO teamTBL VALUES('K06', '아이파크', '부산', 'C02');
INSERT INTO teamTBL VALUES('K13', '강원FC', '강원', 'A03');
INSERT INTO teamTBL VALUES('K14', '제주유나이티드FC', '제주', 'A04');
INSERT INTO teamTBL VALUES('K15', '대구FC', '대구', 'A05');

INSERT INTO playerTBL VALUES(2012137, '이고르', 'K06');
INSERT INTO playerTBL VALUES(2012136, '오비나', 'K10');
INSERT INTO playerTBL VALUES(2012135, '윤원일', 'K02');
INSERT INTO playerTBL VALUES(2012134, '페르난도', 'K04');
INSERT INTO playerTBL VALUES(2012133, '레오', 'K03');
INSERT INTO playerTBL VALUES(2012132, '실바', 'K07');
INSERT INTO playerTBL VALUES(2012131, '무스타파', 'K04');
INSERT INTO playerTBL VALUES(2012130, '에디', 'K01');
INSERT INTO playerTBL VALUES(2012129, '알리송', 'K01');
INSERT INTO playerTBL VALUES(2012128, '쟈스민', 'K08');
INSERT INTO playerTBL VALUES(2012127, '디디', 'K06');

SELECT * FROM playertbl;
SELECT * FROM teamtbl;
SELECT * FROM stadiumtbl;

select count(team_id) from playertbl;

select count(distinct team_id) from playertbl;

select playerTBL.player_name, teamTBL.team_name
from playerTBL inner join teamTBL
on playerTBL.team_id = teamTBL.team_id;


SELECT P.player_name, T.team_name
FROM playerTBL P INNER JOIN teamTBL T
ON P.team_id = T.team_id;

SELECT P.player_name 선수명, P.position 포지션, T.region_name 연고지, T.team_name 팀명, S.stadium_name 구장명
FROM playerTBL P INNER JOIN teamTBL T ON P.team_id = T.team_id
INNER JOIN stadiumTBL S ON T.stadium_id = S.stadium_id
ORDER BY 선수명;

select s.번호 교수번호, s.이름 교수이름, d.이름 소속학과이름
from 학과 d inner join 교수 s
on d.번호 = s.학과번호;

select d.이름 학과이름, p.이름 교수이름, c.이름 과목이름
from 학과 d inner join 교수 p 
on d.번호 = p.학과번호 inner join 과목 c
on p.번호 = c.교수번호;


CREATE TABLE left_tbl
(
	id int,
	name varchar(10)	
);

CREATE TABLE right_tbl
(
	id int,
	name varchar(10)	
);

INSERT INTO left_tbl VALUE(1, 'ONE'), (2, 'TWO'), (3, 'THREE'), (4, 'FOUR'), (5, 'FIVE');
INSERT INTO right_tbl VALUE(1, '하나'), (3, '셋'), (5, '다섯'), (7, '일곱'), (9, '아홉');

SELECT * FROM left_tbl;
SELECT * FROM right_tbl;

SELECT left_tbl.id, left_tbl.name, right_tbl.name
FROM left_tbl LEFT OUTER JOIN right_tbl
ON left_tbl.id = right_tbl.id;

SELECT left_tbl.id, left_tbl.name, right_tbl.name
FROM left_tbl RIGHT OUTER JOIN right_tbl
ON left_tbl.id = right_tbl.id;

SELECT *
FROM left_tbl LEFT OUTER JOIN right_tbl
ON left_tbl.id = right_tbl.id
UNION
SELECT *
FROM right_tbl LEFT OUTER JOIN left_tbl
ON left_tbl.id = right_tbl.id;

SELECT left_tbl.name, right_tbl.name
FROM left_tbl CROSS JOIN right_tbl;


SELECT 이름, 키, 몸무게
FROM 학생
WHERE 학년 = (SELECT 학년 FROM 학생 WHERE 이름 = '김태희');

SELECT 이름, 학년, 키, 몸무게
FROM 학생
WHERE 키 > (SELECT AVG(키) FROM 학생 WHERE 학과번호 = 1);

SELECT 이름, 학년, 키, 몸무게
FROM 학생
WHERE 학년 = (SELECT 학년 FROM 학생 WHERE 이름 = '김태희')
AND 키 = (SELECT 키 FROM 학생 WHERE 이름 = '김태희');


SELECT 번호 AS 학번, 이름, 학년, 학과번호
FROM 학생
WHERE 학과번호 IN (SELECT 번호 FROM 학과 WHERE 이름 LIKE '%문과%');