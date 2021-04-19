-- 3. 논리 연산자가 포함된 WHERE절

/*
두 개의 조건을 AND 연산자로 연결해보자.
질의 8 : 부서 2에 근무하면서 매월 2,500,000원보다 많은 급여를 받는 
모든 사원들의 이름, 직급, 급여를 검색하라.
*/
SELECT EMPNAME, TITLE, SALARY
FROM EMPLOYEE
WHERE DNO = 2 AND SALARY > 2500000;

/*
동일한 애트리뷰트에 대해서 두 개의 조건을 사용해보자.
질의 9 : 급여가 2,000,000원에서 3,000,000원 사이인 
모든 사원들의 이름, 직급, 급여를 검색하라.
이 SELECT문을 BETWEEN을 사용하여 표현해보자.
*/
SELECT EMPNAME, TITLE, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 2000000 AND 3000000;

/*
부정 표현을 사용해보자.
질의 10 : 직급이 과장이 아니면서 급여가 3,000,000원보다 많은
모든 사원들의 이름, 직급, 급여를 검색하라.
*/
SELECT EMPNAME, TITLE, SALARY
FROM EMPLOYEE
WHERE TITLE <> '과장' AND SALARY > 3000000;

/*
OR을 사용하여 조건들을 연결해보자.
질의 11 : 직급이 대리이거나 과장이거나 부장인 모든 사원들의 이름, 직급, 부서번호를 검색하라.
이 SELECT문을 IN을 사용하여 간단하게 표현해보자.
*/
SELECT EMPNAME, TITLE, DNO
FROM EMPLOYEE
WHERE TITLE IN ('대리','과장');


/*
IN과 다른 조건을 함께 사용해보자.
질의 12 : 2번 부서에 근무하면서, 직급이 대리이거나 과장인 
모든 사원들의 이름, 직급, 부서번호를 검색하라.
*/
SELECT EMPNAME, TITLE, DNO
FROM EMPLOYEE
WHERE DNO = 2 AND TITLE IN ('대리','과장');



