package framework;

import concreate.HpCreator;
import concreate.MpCreator;

public class MainClass {

	public static void main(String[] args) {
		ItemCreator creator;
		Item item;
		
		creator = new HpCreator();
		item = creator.create();
		item.use();
		
		creator = new MpCreator();
		item = creator.create();
		item.use();
		
		

	}

}
