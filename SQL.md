#### DBMS = client program(mysql) + server program(mysquld)  => CLI환경
#### client program(Mysql work bench => GUI환경
#### SQL문
* SELECT : 테이블의 데이터를 조회할때  
* '*' : 모든 column까지 포함  
* FROM + DATABASE + DATA : 어느부분의 데이터인지 범위설정  
* WHERE email = 'emma@naver.com'; : 특정조건을 만족하는 row만 추출  
#### 데이터 조회하기  
* int, text타입 모두 부등호로 데이터 조회 가능
ex) age > 20 , sign_up_day > '2020-01-01'  
* ex) address LIKE '서울%' / '%안산시%'  
* ex) age IN (20,30) => 같은 age 컬럼일때 괄호로 묶어서 사용  
  * %, ', \ 이 포함된 정보를 조회할때 => '20\%'  (앞에 백슬래시 써준다)  
* 데이터 관련함수(WHERE뒤에 사용)  
YEAR, MONTH, DAYOFMONTH, DATEDIFF(sign_up_day, CURDATE), DATE_ADD(sign_up_day) INTERVAL 200DAY : 회원가입으로부터 200일 후의 날짜, DATE_SUB, DATETIME(시간+날짜)  
* 유닉스타입 시간사용   
FROM_UNIXTIME(UNIX_TIMESTAMP(sign_up_time)) => 유닉스타입의 시간을 일반시간타입으로 변환  
#### 정렬
> row를 특정 column기준으로 순서대로 출력  
* ORDER BY + height ASC/DESC , CAST(data AS signed)  
(signed = 음수+양수 / decimal = 소수)   
* LIMIT (개수만 추려보기, N번째부터 몇개 추려보기)  
(LIMIT 10, LIMIT 0, 10) 
#### 데이터특성  
Aggregate Function(집계함수)  
* SELECT + COUNT(*) => All(null까지 포함하여 집계)
* SELECT + 집계함수(MAX, MIN) 
* SELECT + 산술함수(ABS, ROUND, SQRT)
NULL 관리하기 
* WHERE address IS NULL / IS NOT NULL   (address NULL => 유효하지않은 명령)
* NULL을 다른문자로 바꾸기  
=> SELECT COARLECE(height, '####') FROM member;



