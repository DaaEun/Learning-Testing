package PackTo;

public class DefaulGameConnection extends AbsGameConnection {

	@Override
	protected String doSecurity(String string) {
		System.out.println("�˰����� �̿��� ���ڵ�");
		System.out.println("��ȭ�� �˰����߰�... ");
		return string;
	}

	@Override
	protected boolean authentication(String id, String password) {
		System.out.println("���̵� �н����� Ȯ�� ����");
		return true;
	}

	@Override
	protected int authorization(String username) {
		//System.out.println("���� Ȯ��");
		//������ �̼������̸�.. ���� -1�� �ο�... 
		// 10 ���� ���Ŀ� �˴ٿ� �Ƿ� �˰����� ����.. 
		return 0;
	}

	@Override
	protected String connection(String info) {
		System.out.println("������ ���� �ܰ�");
		return info;
	}

}
