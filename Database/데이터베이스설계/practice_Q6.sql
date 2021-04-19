-- 6. 검색 결과 정렬

/*
검색 결과를 오름차순이나 내림차순으로 정렬해보자.
질의 15 : 모든 사원들의 급여와 이름을 검색하여 급여에 따라 오름차순으로 정렬하라.
*/
SELECT EMPNAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY;

/*
DESC를 사용하여 내림차순으로 정렬해보자.
질의 16 : 모든 사원들의 급여와 이름을 검색하여 급여에 따라 내림차순으로 정렬하라.
*/
SELECT EMPNAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC;

/*
DESC를 생략하면 디폴트는 오름차순이다. 
하나의 ORDER BY절에서 ASC와 DESC를 혼합해서 사용할 수 있다.
질의 17 : 모든 사원들의 급여와 이름을 검색하여 부서번호에 대해서는 오름차순으로, 
급여에 대해서는 내림차순으로 정렬하라.
*/
SELECT EMPNAME, SALARY, DNO
FROM EMPLOYEE
ORDER BY DNO, SALARY DESC;


