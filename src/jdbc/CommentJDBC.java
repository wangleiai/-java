package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ConnectionGroup;
import com.mysql.jdbc.PreparedStatement;
import com.sun.org.apache.regexp.internal.recompile;

import jdbcUtils.*;

public class CommentJDBC {
	static String driver = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/bookshopping";
	static String username = "root";
	static String password = "wl19980805";

	private static Connection connection = null;

	private static Connection getConn() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			connection = (Connection) DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public static boolean insert(Comment comment) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "insert into comment(bookId, userId, commentContent) values(?,?,?)";
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setString(1, comment.getBookId());
			preparedStatement.setString(2, comment.getUserId());
			preparedStatement.setString(3, comment.getCommentContent());
//			Date date=new Date();                             
//	        SimpleDateFormat temp=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
//	        String date1=temp.format(date);  
//	        
//	        preparedStatement.setDate(4, now);
//			preparedStatement.
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			 e.printStackTrace();
		}

		return false;
	}

	public static ArrayList<Comment> selectByBookId(String bookId) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from comment where bookid=" + "'" + bookId + "'" + "order by commentId";
		ArrayList<Comment> cArrayList = new ArrayList<>();
		Comment comment = null;
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				// System.out.println(resultSet.getString("commentContent") + " " +
				// resultSet.getString("childId") + " "
				// + resultSet.getDate("commentDate"));
				comment = new Comment(resultSet.getString("bookId"), resultSet.getString("userId"),
						resultSet.getString("commentContent"), resultSet.getString("childId"),
						resultSet.getDate("commentDate"));
				// System.out.println(comment);
				cArrayList.add(comment);

			}
			preparedStatement.close();
			connection.close();
			System.out.println(cArrayList);
			return cArrayList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cArrayList;
	}

	public static void main(String[] args) {
		Comment comment = new Comment("5", "1", "哈哈哈哈");
		 System.out.println(insert(comment));

		 
		selectByBookId("1");
//		Date date=new Date();                             
//        SimpleDateFormat temp=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
////        String date1=temp.format(date); 
	
//        System.out.println(date1);
	}
}
