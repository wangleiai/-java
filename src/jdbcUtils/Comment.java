package jdbcUtils;

import java.util.Date;



public class Comment {
	
	private String bookId;
	private String userId;
	private String commentContent;
	private String childId;
	private Date commentDate;
	
	public String getChildId() {
		return childId;
	}

	public Comment(String bookId, String userId, String commentContent, String childId, Date commentDate) {
//		super();
		this.bookId = bookId;
		this.userId = userId;
		this.commentContent = commentContent;
		this.childId = childId;
		this.commentDate = commentDate;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}


	
	public Comment(String bookId, String userId, String commentContent) {
		super();
		this.bookId = bookId;
		this.userId = userId;
		this.commentContent = commentContent;
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
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	@Override
	public String toString() {
		return "Comment [bookId=" + bookId + ", userId=" + userId + ", commentContent=" + commentContent + ", childId="
				+ childId + ", commentDate=" + commentDate + "]";
	}

	
	
}
