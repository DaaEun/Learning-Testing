-- 2. 간단한 WHERE절이 포함된 SELECT문

/*
특정 부서에 근무하는 사람들을 검색해보자.
질의 4 : 3번 부서에 근무하는 모든 사원들의 이름과 직급을 검색하라.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE DNO = 3;

/*
특정 직급의 사원들을 검색해보자.
질의 5 : 직급이 과장인 모든 사원들의 이름을 검색하라.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE TITLE = '과장';

/*
날짜를 WHRER절에 사용해보자.
질의 6 : 2000년 2월 1일 이후에 입사한 모든 사원들의 이름과 입사일을 검색하라.
*/
SELECT EMPNAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE > '2000-02-01';

/*
부정 표현을 WHERE절에 사용해보자.
질의 7 : 직급이 과장이 아닌 모든 사원들의 이름과 직급을 검색하라.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE TITLE <> '과장';
