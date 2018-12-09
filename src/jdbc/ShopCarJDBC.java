package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import jdbcUtils.Book;
import jdbcUtils.Comment;
import jdbcUtils.ShopCar;

public class ShopCarJDBC {

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

	public static boolean insert(ShopCar shopCar) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "insert into shop_car(bookId, userId, shopid) values(?,?,?)";
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setString(1, shopCar.getBookId());
			preparedStatement.setString(2, shopCar.getUserId());
			preparedStatement.setString(3, shopCar.getShopId());
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

//	public static bookAdd updata(Strinng ) {
//		
//	}
	
	public static boolean delete(ShopCar shopCar) {

		
		Connection connection = getConn();
		String sql = "delete from shop_car where shopid = " + "'" + shopCar.getShopId() + "'";
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
			// e.printStackTrace();

		}

		return false;
	}

	public static ArrayList<ShopCar> selectByUserId(String userId) {
		Connection connection = getConn();
		String sql = "select * from shop_car where userid = " + "'" + userId + "'";
		ArrayList<ShopCar> shopCars = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				System.out.println(resultSet.getString("bookid"));
				ShopCar shopCar = new ShopCar(resultSet.getString("bookid"), resultSet.getString("userid"), resultSet.getString("shopId"));
				shopCars.add(shopCar);
			}
			preparedStatement.close();
			connection.close();
			return shopCars;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}

		return shopCars;
	}

	public static void main(String[] args) {
		ShopCar shopCar = new ShopCar("1", "1", "1");
		// System.out.println(insert(shopCar));
		// System.out.println(delete(shopCar));
		System.out.println(selectByUserId("1"));
	}
}
