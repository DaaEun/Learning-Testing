-- 9. ���� ����(inner join)

/*
���� ������ ����Ͽ� �� �����̼����κ��� �����͸� �˻��غ���.
���� 21 : ��� ����鿡 ���ؼ� �̸��� �ٹ��ϴ� �μ��� ���� �˻��϶�.
*/
SELECT EMPNAME, FLOOR
FROM DEPARTMENT D, EMPLOYEE E
WHERE D.DEPTNO = E.DNO;