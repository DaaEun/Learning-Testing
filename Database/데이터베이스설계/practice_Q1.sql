-- 1. WHERE���� ���� ������ SELECT��

/*
�� �����̼����κ��� �� ���� ��Ʈ����Ʈ�� �˻��غ���.
���� 1 : DEPARTMENT �����̼ǿ��� �μ��̸��� �μ���ȣ�� �˻��϶�.
*/
SELECT DEPTNO, DEPTNAME
FROM DEPARTMENT;

/*
�� �����̼��� ��� ��Ʈ����Ʈ�� �˻��غ���.
���� 2 : EMPLOYEE �����̼��� ��� ��Ʈ����Ʈ���� �˻��϶�.
*/
SELECT *
FROM EMPLOYEE;

/*
�ߺ� ���õ��� �����ϰ� �˻��غ���.
���� 3 : EMPLOYEE �����̼ǿ��� ���� ��Ʈ����Ʈ�� �˻��϶�.
*/
SELECT DISTINCT TITLE
FROM EMPLOYEE;
