package PackTo;

public class DefaulGameConnection extends AbsGameConnection {

	@Override
	protected String doSecurity(String string) {
		System.out.println("알고리즘을 이용한 디코드");
		System.out.println("강화된 알고리즘추가... ");
		return string;
	}

	@Override
	protected boolean authentication(String id, String password) {
		System.out.println("아이디 패스워드 확인 과정");
		return true;
	}

	@Override
	protected int authorization(String username) {
		//System.out.println("권한 확인");
		//유저가 미성년자이면.. 권한 -1로 부여... 
		// 10 시이 이후에 셧다운 되록 알고리즘을 구현.. 
		return 0;
	}

	@Override
	protected String connection(String info) {
		System.out.println("마지막 접속 단계");
		return info;
	}

}
