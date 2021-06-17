package framework;

public abstract class ItemCreator {
	// 아이템을 생성하기 전에 데이터베이스에서 아이템 정보를 요청한다. 
	abstract protected void requestItemInfo();
	//아이템을 생성 후 아이템 복제 등의 불법을 방지하기 위해 데이터 베이스에 아이템 생성 정보를 남긴다
	abstract protected void createItemLog();
	// 아이템을 생성하는 알고리즘.. 
	abstract protected Item createItem();
	
	// 템플리 메서드... --> 팩토리 메서드.. 
	public Item create() {
		Item item;
		//step1 .. 아이템 정보를 요청... 
		requestItemInfo();
		// step2. 아이템 생성... 
		item= createItem();
		// step3 .. 로그를 남기는 단계
		createItemLog();
		return item;
	}
	
}
