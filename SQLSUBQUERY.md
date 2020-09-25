## 위치에 따른 서브쿼리
### SELECT절의 서브쿼리  
```MYSQL

```

### WHERE절의 서브쿼리
* 계산하는 서브쿼리
```MYSQL
SELECT id, name, price
FROM item
WHERE price = (SELECT MIN(price) FROM item);  
```
* 원하는 조건을 필터링 (IN뒤의 조건중 맞는게 있다면 TRUE를 리턴 / ANY,SOME,ALL(서브쿼리) 가능!)
```MYSQL
SELECT * FROM item
WHERE id IN
(
SELECT item_id
FROM review
GROUP BY item_id HAVING COUNT(*) >= 3
)
```
### FROM절의 서브쿼리
* Derived Table : 서브쿼리로 탄생한 테이블 (alias필수) 
```MYSQL
select AVG(review_count)
FROM
(select
    SUBSTRING(address, 1, 2) AS region,
    COUNT(*) AS review_count
FROM review AS r LEFT OUTER JOIN member AS m
ON r.mem_id = m.mem_id
GROUP BY SUBSTRING(address, 1, 2)
HAVING region IS NOT NULL AND region != '안드' AS review_count_summary);
```

### 상관서브쿼리 
* 서브쿼리만으로 동작이 안됨
* 외부쿼리와 상호작용하여 실행
* EXISTS : 내부쿼리안의 조건에 충족하는 row를 조회후, 충족하는 row만 외부쿼리에 쌓인다!
```sql
SELECT * FROM item
WHERE EXISTS (SELECT item_id FROM review GROUP BY item_id HAVING COUNT(*) >= 3);
```
