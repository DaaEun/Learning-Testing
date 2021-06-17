package concreate;

import java.util.Date;

import framework.Item;
import framework.ItemCreator;

public class HpCreator extends ItemCreator {

	@Override
	protected void requestItemInfo() {
		System.out.println("데이터베이스 회복 물약 요청. ");

	}

	@Override
	protected void createItemLog() {
		System.out.println("회복물약 생성"+new Date());

	}

	@Override
	protected Item createItem() {
		// 생성.. 
		return new HpPotion();
	}

}
