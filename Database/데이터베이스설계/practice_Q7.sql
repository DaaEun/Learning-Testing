-- 7. 집단 함수

/*
여러 투플들의 그룹에 대해서 집단 함수의 값을 구해보자.
질의 18 : 3번 부서에 근무하는 사람들의 수와 평균 급여를 검색하라.
*/
SELECT COUNT(DNO) AS DNO3, AVG(SALARY) AS AVGSAL
FROM EMPLOYEE
WHERE DNO = 3;
