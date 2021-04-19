-- 14. HAVING

/*
� ������ �����ϴ� �׷�鿡 ���ؼ��� ���� �Լ��� �����ϱ� ���� HAVING�� ����Ѵ�.
���� 28 : �μ��� ���� �������� �޿��� �հ谡 10,000,000���� 15,000,000�� ������ �μ��� ���ؼ�
�μ����� �μ��̸��� �޿��� �հ踦 �˻��϶�.
*/
SELECT DNO, SUM(SALARY) AS SUMSAL
FROM EMPLOYEE
GROUP BY DNO
HAVING 10000000 <= SUM(SALARY) AND SUM(SALARY) <= 15000000;

/*
���� 29 : �μ��� ���� �������� �޿��� �հ谡 11,000,000���� 14,000,000�� ������ 
�μ��� �̸��� �޿��� �հ踦 ���϶�.
*/
SELECT DNO, SUM(SALARY) AS SUMSAL
FROM EMPLOYEE
GROUP BY DNO
HAVING 11000000 <= SUM(SALARY) AND SUM(SALARY) <= 14000000;