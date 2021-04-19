-- 9. 내부 조인(inner join)

/*
내부 조인을 사용하여 두 릴레이션으로부터 데이터를 검색해보자.
질의 21 : 모든 사원들에 대해서 이름과 근무하는 부서의 층을 검색하라.
*/
SELECT EMPNAME, FLOOR
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO;