-- 4. LIKE

/*
LIKE 를 사용하여 문자열을 비교해보자.
질의 13 : 김 씨 성을 가진 모든 사원들의 이름과 직급을 검색하라.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE EMPNAME LIKE '김%';