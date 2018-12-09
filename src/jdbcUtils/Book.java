package jdbcUtils;

public class Book {
	
	private String bookId;
	private String bookAuthor;
	private String bookName;
	private String cateId;
	private int bookPrice;
	private int bookSaled;
	private int bookSurplus;
	private String bookDec;

	public Book(String bookId, String bookAuthor, String bookName, String cateId, int bookPrice, int bookSaled,
			int bookSurplus) {
		super();
		this.bookId = bookId;
		this.bookAuthor = bookAuthor;
		this.bookName = bookName;
		this.cateId = cateId;
		this.bookPrice = bookPrice;
		this.bookSaled = bookSaled;
		this.bookSurplus = bookSurplus;
	}
	
	
	public String getBookDec() {
		return bookDec;
	}


	public void setBookDec(String bookDec) {
		this.bookDec = bookDec;
	}


	public Book(String bookId, String bookAuthor, String bookName, String cateId, int bookPrice, int bookSaled,
			int bookSurplus, String bookDec) {
		super();
		this.bookId = bookId;
		this.bookAuthor = bookAuthor;
		this.bookName = bookName;
		this.cateId = cateId;
		this.bookPrice = bookPrice;
		this.bookSaled = bookSaled;
		this.bookSurplus = bookSurplus;
		this.bookDec = bookDec;
	}


	public Book() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", bookAuthor=" + bookAuthor + ", bookName=" + bookName + ", cateId=" + cateId
				+ ", bookPrice=" + bookPrice + ", bookSaled=" + bookSaled + ", bookSurplus=" + bookSurplus + "]";
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getCateId() {
		return cateId;
	}
	public void setCateId(String cateId) {
		this.cateId = cateId;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getBookSaled() {
		return bookSaled;
	}
	public void setBookSaled(int bookSaled) {
		this.bookSaled = bookSaled;
	}
	public int getBookSurplus() {
		return bookSurplus;
	}
	public void setBookSurplus(int bookSurplus) {
		this.bookSurplus = bookSurplus;
	}
	
	
}
