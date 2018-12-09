package uuid;

import java.util.UUID;

public class Uuid {
	public static String getUUID() {
		// 返回一个随机 id 
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");

		return uuid;
	}
}
