-- 5. NULL

/*
값이 들어 있지 않은 애트리뷰트를 WHERE절에 사용할 떄 IS NULL 등을 사용한다.
질의 14 : 직속 상사가 없는,즉 가장 높은 사원의 이름과 직급을 검색하라.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE MANAGER IS NULL;