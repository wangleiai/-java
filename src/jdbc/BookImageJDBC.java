package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.prism.Image;
import com.sun.prism.Presentable;

import jdbcUtils.BookImage;

public class BookImageJDBC {
	
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
			System.out.println("数据库连接错误");
//			e.printStackTrace();
		}
		return connection;
	}
	
	public static boolean insert(BookImage bImage) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "insert into book_Image (imageId, bookId, imageUrl) values(?,?,?)";
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setString(1, bImage.getImageId());
			preparedStatement.setString(2, bImage.getBookId());
			preparedStatement.setString(3, bImage.getImageUrl());
			int i =preparedStatement.executeUpdate();
			preparedStatement.close();
			connection.close();
			if(i>=1) {
				return true;
			}
			else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public static String selectByBookId(String id) {
		Connection  connection= getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from book_image  where bookId=" + "'" + id+"'";
		String bookImageUrl = "";
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				System.out.println(resultSet.getString("imageId"));
				bookImageUrl = resultSet.getString("imageUrl");
			}
			preparedStatement.close();
			connection.close();
			return bookImageUrl;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return bookImageUrl;
		}
		
//		return bookImageUrl;
	}
	

	public static void main(String[] args) {
		BookImage bImage = new BookImage("1", "1", "baidu.com");
//		System.out.println(insert(bImage));
		System.out.println(selectByBookId("1"));
	}
}
