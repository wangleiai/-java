package jdbcUtils;

public class ShopCar {
	
	private String bookId;
	private String userId;
	private String shopId;
	
	public ShopCar(String bookId, String userId, String shopId) {
//		super();
		this.bookId = bookId;
		this.userId = userId;
		this.shopId = shopId;
	}
	
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	@Override
	public String toString() {
		return "ShopCar [bookId=" + bookId + ", userId=" + userId + ", shopId=" + shopId + "]";
	}
	
	
}
