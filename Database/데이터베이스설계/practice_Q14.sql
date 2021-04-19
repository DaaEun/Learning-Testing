-- 14. HAVING

/*
어떤 조건을 만족하는 그룹들에 대해서만 집단 함수를 적용하기 위해 HAVING을 사용한다.
질의 28 : 부서에 속한 직원들의 급여의 합계가 10,000,000원과 15,000,000원 사이인 부서에 대해서
부서별로 부서이름과 급여의 합계를 검색하라.
*/
SELECT DNO, SUM(SALARY) AS SUMSAL
FROM EMPLOYEE
GROUP BY DNO
HAVING 10000000 <= SUM(SALARY) AND SUM(SALARY) <= 15000000;

/*
질의 29 : 부서에 속한 직원들의 급여의 합계가 11,000,000원과 14,000,000원 사이인 
부서의 이름과 급여의 합계를 구하라.
*/
SELECT DNO, SUM(SALARY) AS SUMSAL
FROM EMPLOYEE
GROUP BY DNO
HAVING 11000000 <= SUM(SALARY) AND SUM(SALARY) <= 14000000;