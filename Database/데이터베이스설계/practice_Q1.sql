-- 1. WHERE절이 없는 간단한 SELECT문

/*
한 릴레이션으로부터 몇 개의 애트리뷰트를 검색해보자.
질의 1 : DEPARTMENT 릴레이션에서 부서이름과 부서번호를 검색하라.
*/
SELECT DEPTNO, DEPTNAME
FROM DEPARTMENT;

/*
한 릴레이션의 모든 애트리뷰트를 검색해보자.
질의 2 : EMPLOYEE 릴레이션의 모든 애트리뷰트들을 검색하라.
*/
SELECT *
FROM EMPLOYEE;

/*
중복 투플들을 제거하고 검색해보자.
질의 3 : EMPLOYEE 릴레이션에서 직급 애트리뷰트를 검색하라.
*/
SELECT DISTINCT TITLE
FROM EMPLOYEE;
