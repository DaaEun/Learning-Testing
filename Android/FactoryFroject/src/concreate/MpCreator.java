package concreate;

import java.util.Date;

import framework.Item;
import framework.ItemCreator;

public class MpCreator extends ItemCreator {

	@Override
	protected void requestItemInfo() {
		System.out.println("�����ͺ��̽� ���� ���� ��û. ");

	}

	@Override
	protected void createItemLog() {
		System.out.println("���¹��� ����"+new Date());

	}

	@Override
	protected Item createItem() {
		// ����.. 
		return new MpPotion();
	}


}
