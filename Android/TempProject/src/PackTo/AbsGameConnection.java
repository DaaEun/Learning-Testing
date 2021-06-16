package PackTo;

public abstract class AbsGameConnection {

	protected abstract String doSecurity(String string);

	protected abstract boolean authentication(String id, String password);

	protected abstract int authorization(String username);

	protected abstract String connection(String info);

	// ���ø� �޼���
	public String requestConnection(String encodedInfo) {
		// ���Ȱ���.. /// ��ȣ�� ��ȣȭ.. �۾�..
		String decodedInfo = doSecurity(encodedInfo);
		String id = "aaa";
		String password = "bbb";
		// ��������..
		if (!authentication(id, password)) {
			throw new Error("���̵� �н����� ����ġ. ");
		}
		// ���� ����
		String userName = "userName";
		int i = authorization(userName);
		switch (i) {
		case -1:
			throw new Error("�˴ٿ�");
		case 0: // ���� �޴���..
			System.out.println("���� �޴���");
			break;
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		default:
			break;
		}
		// ���Ӱ���..
		return connection(decodedInfo);
	}
}
