
public class MainClass {

	public static void main(String[] args) {
		Adapter adapter = new AdapterImpl();
		System.out.println(adapter.twiceOf(100f));
		System.out.println(adapter.halfOf(100f));
		//새로운 기능을 추가..adapter 


	}

}
