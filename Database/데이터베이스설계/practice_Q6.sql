-- 6. �˻� ��� ����

/*
�˻� ����� ���������̳� ������������ �����غ���.
���� 15 : ��� ������� �޿��� �̸��� �˻��Ͽ� �޿��� ���� ������������ �����϶�.
*/
SELECT EMPNAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY;

/*
DESC�� ����Ͽ� ������������ �����غ���.
���� 16 : ��� ������� �޿��� �̸��� �˻��Ͽ� �޿��� ���� ������������ �����϶�.
*/
SELECT EMPNAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC;

/*
DESC�� �����ϸ� ����Ʈ�� ���������̴�. 
�ϳ��� ORDER BY������ ASC�� DESC�� ȥ���ؼ� ����� �� �ִ�.
���� 17 : ��� ������� �޿��� �̸��� �˻��Ͽ� �μ���ȣ�� ���ؼ��� ������������, 
�޿��� ���ؼ��� ������������ �����϶�.
*/
SELECT EMPNAME, SALARY, DNO
FROM EMPLOYEE
ORDER BY DNO, SALARY DESC;


