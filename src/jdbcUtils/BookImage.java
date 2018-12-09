package jdbcUtils;

public class BookImage {
	
	private String imageId;
	private String bookId;
	private String imageUrl;
	
	public BookImage(String imageId, String bookId, String imageUrl) {
		super();
		this.imageId = imageId;
		this.bookId = bookId;
		this.imageUrl = imageUrl;
	}
	
	public String getImageId() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "BookImage [imageId=" + imageId + ", bookId=" + bookId + ", imageUrl=" + imageUrl + "]";
	}
	
	

}
