-- 8. ����

/*
�� �����̼����κ��� �����͸� �˻��غ���.
���� 19 : ��� ����鿡 ���ؼ� �̸��� �ٹ��ϴ� �μ��� ���� �˻��϶�.
*/
SELECT EMPNAME, FLOOR
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO;

/*
���� 20 : ���ߺμ��� �ٹ��ϴ� ��� ����鿡 ���ؼ� �̸��� ������ �˻��϶�.
*/
SELECT EMPNAME, TITLE
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO AND D.DEPTNAME = '����';