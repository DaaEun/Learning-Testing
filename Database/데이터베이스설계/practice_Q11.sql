-- 11. 한 개의 애트리뷰트로 이루어진 릴레이션이 반환되는 중첩 질의

/*
이 경우에는 외부 질의의 WHERE절에 비교 연산자(=, >, >=, <, <=, <>)를 사용할 수 없고,
IN, ANY, ALL, EXISTS 등을 사용해야 한다.
질의 24 : 8층이나 9층에 위치한 부서에 근무하는 사원들의 이름을 검색하라.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE DNO IN
    (SELECT DEPTNO
    FROM DEPARTMENT
    WHERE FLOOR IN (8,9));
    