-- 10. �� ���� ��Į�� ���� ��ȯ�Ǵ� ��ø ����

/*
��ø ���Ǵ� �ܺ� ������ WHERE���� ���Ե� SELECT���̴�.
���� 22 : ������ ���� �μ��� �ٹ��ϴ� ������� �̸��� ������ �˻��ض�.
*/
SELECT EMPNAME, TITLE 
FROM EMPLOYEE
WHERE DNO = 
    (SELECT DNO
    FROM EMPLOYEE
    WHERE EMPNAME = '����');

/*
���� 23 : ��ü ������� ��� �޿����� ���� �޴� ������� �̸��� �˻��ض�.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE SALARY > 
(SELECT AVG(SALARY)
    FROM EMPLOYEE);
    
    
    
    