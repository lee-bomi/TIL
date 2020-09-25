```sql
-- 서브쿼리 사용하기
SELECT name, height FROM userTbl WHERE height IN (SELECT height FROM userTbl WHERE addr='경남'); 

-- 특정값은 이렇게 사용  
SELECT name, height FROM userTbl WHERE height IN (173,170);  

-- buyTbl로부터 전체를 다시 가져와서 새 테이블 생성  
CREATE TABLE buyTbl2 (SELECT * FROM buyTbl); 
SELECT emp_no, hire_date FROM employees  
	ORDER BY hire_date ASC  
		-- LIMIT 0,5;      --0번째부터 5개를 가져와라  
        LIMIT 19 OFFSET 2;  -- 2번째부터 19까지 가져와라  
	
-- 문제 ) 사용자별 평균 수량을 출력하세요  
SELECT userId, AVG(amount) AS '평균구매개수' FROM buyTbl GROUP BY userId;  

-- WHERE절에 OR조건으로 나누어보기  
SELECT name, height FROM userTbl  
    WHERE height=(SELECT MAX(height) FROM userTbl)  
    OR height = (SELECT MIN(height) FROM userTbl)  
    OR height = (SELECT ROUND(AVG(height)) FROM userTbl);  
    
-- WHERE절에는 집계함수가 들어가면 암됨.(집계함수는 GROUP BY와 함께)  
-- 잘못된예시  

SELECT userId AS '사용자', SUM(price*amount) AS '총구매액'  
	FROM buyTbl  
    WHERE SUM(price*amount) > 1000  
    GROUP BY userId;  
    
-- 맞는 예시  
SELECT userId AS '사용자', SUM(price*amount) AS '총구매액'  
	FROM buyTbl  
    GROUP BY userId  
    HAVING SUM(price*amount) > 1000; -- 집계 함수가 WHERE절에 있으면안되고  
    -- GROUP BY를 먼저 사용하고 이후 HAVING 으로 조건을 적용함  
	-- 집계함수 COUNT, AVG, SUM, ....   
    -- 구매테이블 각 고객의 총 금액의 합계가 1000만원 이상인 사람을 골라냄  
-- CONVERT  

SELECT CONVERT(AVG(amount), SIGNED INTEGER) AS '평균 구매개수' FROM buyTbl; 

-- CAST  
SELECT CAST(AVG(amount) AS SIGNED INTEGER) AS '평균구매개수' FROM buyTbl;  

-- 문자열을 날짜형태로 형변환  
SELECT CAST('2010$12$12' AS DATE);  
SELECT CAST('2010/12/12' AS DATE);  
SELECT CAST('2010%12%12' AS DATE);  
SELECT CAST('2010@12@12' AS DATE);  

-- CONCAT  
SELECT num, CONCAT(CAST(price AS CHAR(10)), 'X', CAST(amount AS CHAR(4)), '=')  
	AS '단가X수량', price*amount AS '구매액'  
    FROM buyTbl; -- CONCAT 데이터 합치기  


-- CASE END문
SELECT CASE 7 
	WHEN 1 THEN '일'
    WHEN 5 THEN '오'
    WHEN 10 THEN '십'
    ELSE '모름'
    END AS '결과';

-- SELECT문에 쓰는 여러 연산자
SELECT UPPER('abcEFSDF');
SELECT LPAD('이것이', 7, '##'), RPAD('이것이', 50, '##');
SELECT LTRIM('    이것이'), RTRIM('이것이    ');
SELECT TRIM('     이것이    ');
SELECT TRIM(BOTH 'ㅋ' FROM 'ㅋㅋㅋ재미없어 ㅋㅋㅋ');  -- 결과물 : 재미없어 / FROM절의 양쪽ㅋ을 없애주는 기능
SELECT REPEAT('이것이', 3);
SELECT REPLACE('이것이 MYSql이다.', '이것이', 'This is');
SELECT REVERSE('MYSQL');
SELECT CONCAT('이것이', space(30), 'mysql이다');
SELECT SUBSTRING('대한민국만세', 3, 2);                      -- 결과물 : 민국
SELECT ABS(-100);
SELECT 130 > ABS(-230) ;
SELECT CEILING(4.7), FLOOR(4.7), ROUND(4.7);
SELECT DEGREES(PI()), RADIANS(180);            -- DEGREE각도 / RADIANS
SELECT MOD(157, 10), 157%10, 157 MOD 10; --왼쪽과같이 세종류로 쓸수있다 /  MODULO 연산자 (나눗셈의 나머지를 계산하는 연산자)
SELECT RAND(), FLOOR(1 + (RAND() * (6-1)));  -- 랜덤숫자생성 
-- 랜덤 정렬 > SELECT * FROM tbl_name ORDER BY RAND();
-- 랜덤 숫자(범위) > SELECT FLOOR(5 + (RAND() * 7));
SELECT SIGN(100), SIGN(0), SIGN(-100.123); -- 부호만 알아내기 결과 / 1, 0, -1
SELECT YEAR(CURDATE()), MONTH(CURDATE()), DAYOFMONTH(CURDATE());
SELECT HOUR(CURTIME()), MINUTE(current_time()), SECOND(current_time()), MICROSECOND(current_time());








```
