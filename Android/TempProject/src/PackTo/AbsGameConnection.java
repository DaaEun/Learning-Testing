package PackTo;

public abstract class AbsGameConnection {

	protected abstract String doSecurity(String string);

	protected abstract boolean authentication(String id, String password);

	protected abstract int authorization(String username);

	protected abstract String connection(String info);

	// 템플릿 메서드
	public String requestConnection(String encodedInfo) {
		// 보안과정.. /// 암호를 복호화.. 작업..
		String decodedInfo = doSecurity(encodedInfo);
		String id = "aaa";
		String password = "bbb";
		// 인증과정..
		if (!authentication(id, password)) {
			throw new Error("아이디 패스워드 불일치. ");
		}
		// 권한 과정
		String userName = "userName";
		int i = authorization(userName);
		switch (i) {
		case -1:
			throw new Error("셧다운");
		case 0: // 게임 메니저..
			System.out.println("게임 메니저");
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
		// 접속과정..
		return connection(decodedInfo);
	}
}
