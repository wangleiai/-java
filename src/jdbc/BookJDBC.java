package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import jdbcUtils.User;
import jdbcUtils.*;

public class BookJDBC {

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

	public static boolean insert(Book book) {
		boolean isSuccess = false;
		Connection connection = getConn();
		int i = 0;
		String sql = "insert into book (bookId, bookAuthor, bookName, cateId, bookPrice, bookSaled, bookSurplus, bookDec) values(?, ?, ?, ?,?,?,?,?)";
		PreparedStatement pStatement;
		System.out.println(sql);
		try {
			pStatement = (PreparedStatement) connection.prepareStatement(sql);
			// System.out.println(1);
			pStatement.setString(1, book.getBookId());
			pStatement.setString(2, book.getBookAuthor());
			pStatement.setString(3, book.getBookName());
			pStatement.setString(4, book.getCateId());
			pStatement.setInt(5, book.getBookPrice());
			pStatement.setInt(6, book.getBookSaled());
			pStatement.setInt(7, book.getBookSurplus());
			pStatement.setString(8, book.getBookDec());

			i = pStatement.executeUpdate();
			pStatement.close();
			connection.close();
			isSuccess = true;
			return isSuccess;
		} catch (Exception e) {
			 e.printStackTrace();
			System.out.println("book insert 错误");
			return isSuccess;
		}

	}

	public static boolean update(Book book) {
		boolean isSuccess = false;
		Connection connection = getConn();
		String sql = "update book set bookId=" + "'" + book.getBookId() + "'" + " , bookAuthor=" + "'"
				+ book.getBookAuthor() + "'" + " , bookName=" + "'" + book.getBookName() + "'" + " , cateId="
				+ book.getCateId() + " , bookprice=" + "'" + book.getBookPrice() + "'" + ", bookSaled=" + "'"
				+ book.getBookSaled() + "'" + ",BookSurplus=" + "'" + book.getBookSurplus() + "'" + "where bookId = "
				+ "'" + book.getBookId() + "'";
		System.out.println(sql);
		PreparedStatement preparedStatement;
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connection.close();
			isSuccess = true;
			return isSuccess;
		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println("user update 错误");
			return isSuccess;
		}

	}

	public static boolean delete(Book book) {
		Connection connection = getConn();
		String sql = "delete from book where bookId = " + "'" + book.getBookId() + "'";
		PreparedStatement preparedStatement;
		System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
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

	public static ArrayList<Book> selectAll() {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from book" ;
		ArrayList<Book> bArrayList = new ArrayList<>();
		System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			Book book;
			while (resultSet.next()) {
				System.out.println(resultSet.getString("bookid"));
				book = new Book(resultSet.getString("bookId"), resultSet.getString("bookAuthor"), resultSet.getString("bookName"), resultSet.getString("cateId"), resultSet.getInt("bookPrice"), resultSet.getInt("bookSaled"), resultSet.getInt("bookSurplus"));
				bArrayList.add(book);
			}
			return bArrayList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bArrayList;
	}

	
	/**
	 * 还应当加入按种类查书和按照书名查书
	 */
	public static ArrayList<Book> selectByCateId(String cateId) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from book where cateId=" + "'" + cateId + "'";
		System.out.println(sql);
		ArrayList<Book> cArrayList = new ArrayList<>();
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
//				System.out.println(resultSet.getString("bookid"));
				Book book = new Book(resultSet.getString("bookid"), resultSet.getString("bookAuthor"),
						resultSet.getString("bookName"), resultSet.getString("cateId"), 
						resultSet.getInt("bookPrice"), resultSet.getInt("bookSaled"), resultSet.getInt("bookSurplus"));
				cArrayList.add(book);
			}
			return cArrayList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cArrayList;
	}

	public static Book selectByBookId(String bookId){
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from book where bookid=" + "'" + bookId+"'";
//		System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next();
			Book book = new Book(resultSet.getString("bookid"), resultSet.getString("bookAuthor"),
					resultSet.getString("bookName"), resultSet.getString("cateId"), 
					resultSet.getInt("bookPrice"), resultSet.getInt("bookSaled"), resultSet.getInt("bookSurplus"));
			return book;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public static void main(String[] args) {
//		String bookId, String bookAuthor, String bookName, String cateId, int bookPrice, int bookSaled,
//		int bookSurplus, String bookDec
//		Book book = new Book("f22e93ef41ec43a39116d3d04147c3ff", "王磊", "计算机", "1", 12, 12, 30, "一本关于计算机历史的书");
//		 System.out.println(insert(book));
		// System.out.println(update(book));
		// System.out.println(delete(book));
		// System.out.println(selectAll(book));
//		selectByCateId("0");
//		System.out.println(selectByBookId("0"));
		ArrayList< Book> books= selectAll();
		System.out.println("bookSIze: " + books.size());
		
	}

}
