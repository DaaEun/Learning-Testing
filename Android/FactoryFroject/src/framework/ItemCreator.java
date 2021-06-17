package framework;

public abstract class ItemCreator {
	// �������� �����ϱ� ���� �����ͺ��̽����� ������ ������ ��û�Ѵ�. 
	abstract protected void requestItemInfo();
	//�������� ���� �� ������ ���� ���� �ҹ��� �����ϱ� ���� ������ ���̽��� ������ ���� ������ �����
	abstract protected void createItemLog();
	// �������� �����ϴ� �˰���.. 
	abstract protected Item createItem();
	
	// ���ø� �޼���... --> ���丮 �޼���.. 
	public Item create() {
		Item item;
		//step1 .. ������ ������ ��û... 
		requestItemInfo();
		// step2. ������ ����... 
		item= createItem();
		// step3 .. �α׸� ����� �ܰ�
		createItemLog();
		return item;
	}
	
}
