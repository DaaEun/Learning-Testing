-- 13. GROUP BY

/*
SELECT문의 결과 투플들을 어떤 조건에 따라 그룹들로 나누고, 그룹별로 값을 구해보자.
질의 27 : 부서별로 부서이름과 급여의 평균을 검색하라.
이 질의의 AVG(SALARY)에 별칭을 사용하여 표현해보자.
*/
SELECT DNO, AVG(SALARY) AS AVGSAL
FROM EMPLOYEE
GROUP BY DNO;