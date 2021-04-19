-- 10. 한 개의 스칼라 값이 반환되는 중첩 질의

/*
중첩 질의는 외부 질의의 WHERE절에 포함된 SELECT문이다.
질의 22 : 김상원과 같은 부서에 근무하는 사원들의 이름과 직급을 검색해라.
*/
SELECT EMPNAME, TITLE 
FROM EMPLOYEE
WHERE DNO = 
    (SELECT DNO
    FROM EMPLOYEE
    WHERE EMPNAME = '김상원');

/*
질의 23 : 전체 사원들의 평균 급여보다 많이 받는 사원들의 이름을 검색해라.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE SALARY > 
(SELECT AVG(SALARY)
    FROM EMPLOYEE);
    
    
    
    