-- 8. 조인

/*
두 릴레이션으로부터 데이터를 검색해보자.
질의 19 : 모든 사원들에 대해서 이름과 근무하는 부서의 층을 검색하라.
*/
SELECT EMPNAME, FLOOR
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO;

/*
질의 20 : 개발부서에 근무하는 모든 사원들에 대해서 이름과 직급을 검색하라.
*/
SELECT EMPNAME, TITLE
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO AND D.DEPTNAME = '개발';