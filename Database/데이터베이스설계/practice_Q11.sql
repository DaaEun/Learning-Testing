-- 11. �� ���� ��Ʈ����Ʈ�� �̷���� �����̼��� ��ȯ�Ǵ� ��ø ����

/*
�� ��쿡�� �ܺ� ������ WHERE���� �� ������(=, >, >=, <, <=, <>)�� ����� �� ����,
IN, ANY, ALL, EXISTS ���� ����ؾ� �Ѵ�.
���� 24 : 8���̳� 9���� ��ġ�� �μ��� �ٹ��ϴ� ������� �̸��� �˻��϶�.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE DNO IN
    (SELECT DEPTNO
    FROM DEPARTMENT
    WHERE FLOOR IN (8,9));
    