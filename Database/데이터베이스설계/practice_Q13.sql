-- 13. GROUP BY

/*
SELECT���� ��� ���õ��� � ���ǿ� ���� �׷��� ������, �׷캰�� ���� ���غ���.
���� 27 : �μ����� �μ��̸��� �޿��� ����� �˻��϶�.
�� ������ AVG(SALARY)�� ��Ī�� ����Ͽ� ǥ���غ���.
*/
SELECT DNO, AVG(SALARY) AS AVGSAL
FROM EMPLOYEE
GROUP BY DNO;