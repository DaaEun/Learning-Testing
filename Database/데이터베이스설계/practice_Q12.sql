-- 12. 여러 애트리뷰트로 이루어진 릴레이션이 반환되는 중첩 질의

/*
이런 경우에는 외부 질의의 WHERE절에서 EXISTS, NOT EXIST 등을 사용해야 한다.
질의 25 : 소속 사원이 한 명도 없는 부서에 대해서 부서번호, 부서이름, 층을 검색하라.
*/
SELECT *
FROM DEPARTMENT D
WHERE NOT EXISTS
    (SELECT *
    FROM EMPLOYEE E                  
    where E.DNO = D.DEPTNO);


/*
질의 26 : 조민희와 같은 부서에 근무하면서 같은 직급을 가진 
사원들의 이름, 직급, 부서번호를 검색하라.
*/
SELECT EMPNAME, TITLE, DNO 
FROM EMPLOYEE
WHERE TITLE = 
    (SELECT TITLE
    FROM EMPLOYEE
    WHERE EMPNAME = '조민희')
    AND
    DNO =
    (SELECT DNO
    FROM EMPLOYEE
    WHERE EMPNAME = '조민희');