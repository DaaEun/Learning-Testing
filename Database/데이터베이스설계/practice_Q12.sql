-- 12. ���� ��Ʈ����Ʈ�� �̷���� �����̼��� ��ȯ�Ǵ� ��ø ����

/*
�̷� ��쿡�� �ܺ� ������ WHERE������ EXISTS, NOT EXIST ���� ����ؾ� �Ѵ�.
���� 25 : �Ҽ� ����� �� �� ���� �μ��� ���ؼ� �μ���ȣ, �μ��̸�, ���� �˻��϶�.
*/
SELECT *
FROM DEPARTMENT D
WHERE NOT EXISTS
    (SELECT *
    FROM EMPLOYEE E                  
    where E.DNO = D.DEPTNO);


/*
���� 26 : ������� ���� �μ��� �ٹ��ϸ鼭 ���� ������ ���� 
������� �̸�, ����, �μ���ȣ�� �˻��϶�.
*/
SELECT EMPNAME, TITLE, DNO 
FROM EMPLOYEE
WHERE TITLE = 
    (SELECT TITLE
    FROM EMPLOYEE
    WHERE EMPNAME = '������')
    AND
    DNO =
    (SELECT DNO
    FROM EMPLOYEE
    WHERE EMPNAME = '������');