-- 2. ������ WHERE���� ���Ե� SELECT��

/*
Ư�� �μ��� �ٹ��ϴ� ������� �˻��غ���.
���� 4 : 3�� �μ��� �ٹ��ϴ� ��� ������� �̸��� ������ �˻��϶�.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE DNO = 3;

/*
Ư�� ������ ������� �˻��غ���.
���� 5 : ������ ������ ��� ������� �̸��� �˻��϶�.
*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE TITLE = '����';

/*
��¥�� WHRER���� ����غ���.
���� 6 : 2000�� 2�� 1�� ���Ŀ� �Ի��� ��� ������� �̸��� �Ի����� �˻��϶�.
*/
SELECT EMPNAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE > '2000-02-01';

/*
���� ǥ���� WHERE���� ����غ���.
���� 7 : ������ ������ �ƴ� ��� ������� �̸��� ������ �˻��϶�.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE TITLE <> '����';
