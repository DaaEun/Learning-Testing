-- 5. NULL

/*
���� ��� ���� ���� ��Ʈ����Ʈ�� WHERE���� ����� �� IS NULL ���� ����Ѵ�.
���� 14 : ���� ��簡 ����,�� ���� ���� ����� �̸��� ������ �˻��϶�.
*/
SELECT EMPNAME, TITLE
FROM EMPLOYEE
WHERE MANAGER IS NULL;