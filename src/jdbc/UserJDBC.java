package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.swing.internal.plaf.basic.resources.basic;

import jdbcUtils.User;
import jdk.management.resource.internal.inst.SocketOutputStreamRMHooks;
import jdk.nashorn.internal.objects.annotations.Where;

public class UserJDBC {

	static String driver = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/bookshopping";
	static String username = "root";
	static String password = "wl19980805";

	private static Connection connection = null;

	private static Connection getConn() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// e.printStackTrace();
			System.out.println("数据库连接错误");
		}
		try {
			connection = (Connection) DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// e.printStackTrace();
			System.out.println("数据库连接错误");
		}
		return connection;
	}

	public static boolean insert(User user) {
		boolean isSuccess = false;
		Connection connection = getConn();
		int i = 0;
		String sql = "insert into user (account, password, address, role, userId) values(?, ?, ?, ?, ?)";
		PreparedStatement pStatement;
		System.out.println(sql);
		try {
			pStatement = (PreparedStatement) connection.prepareStatement(sql);
			// System.out.println(1);
			pStatement.setString(1, user.getAccount());
			pStatement.setString(2, user.getPassword());
			pStatement.setString(3, user.getAddress());
			pStatement.setInt(4, user.getRole());
			pStatement.setString(5, user.getUserId());
			// System.out.println(2);
			i = pStatement.executeUpdate();
			// System.out.println(3);
			pStatement.close();
			connection.close();
			isSuccess = true;
			return isSuccess;
		} catch (Exception e) {
			// e.printStackTrace();
			System.out.println("user insert 错误");
			return isSuccess;
		}

	}

	public static boolean update(User user) {
		boolean isSuccess = false;
		Connection connection = getConn();
		String sql = "update user set account=" + "'" + user.getAccount() + "'" + " , password=" + "'"
				+ user.getPassword() + "'" + " , address=" + "'" + user.getAddress() + "'" + " , role=" + user.getRole()
				+ " , userid=" + "'" + user.getUserId() + "'" + "where account = " + "'" + user.getAccount() + "'";
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
			System.out.println("user uodate 错误");
			return isSuccess;
		}

	}

	/*
	 * 查找用户是否存在
	 */
	public static boolean selectIsExist(User user) {
		boolean isExist = false;
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select account" + " from user " + "where account = " + "'" + user.getAccount() + "'";
		// System.out.println(sql + " " + connection);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next(); // 这句话必须要有
			if (user.getAccount().equals(resultSet.getString(1))) {
				isExist = true;
			}
		} catch (SQLException e) {
			System.out.println("select 错误");
			return isExist;
		}

		return isExist;

	}

	/*
	 * 查找用户是否输对账户和密码
	 */
	public static boolean selectIsRight(User user) {
		boolean isRight = false;
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select * from user where account=" + "'" + user.getAccount() + "'" + " and password=" + "'"
				+ user.getPassword() + "'";
		// System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			try {
				resultSet.next();
				System.out.println(resultSet.getString(1));
				isRight = true;
				return isRight;
			} catch (Exception e) {
				isRight = false;
				return isRight;
			}

		} catch (SQLException e) {
			return isRight;
		}

	}
	public static String selectId(User user) {
		boolean isExist = false;
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select *" + " from user " + "where account = " + "'" + user.getAccount() + "'";
		 System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next(); // 这句话必须要有
//			System.out.println(resultSet);
			if (user.getAccount().equals(resultSet.getString(1))) {
				return resultSet.getString("userid");
			} 
		} catch (SQLException e) {
//			e.printStackTrace();
			System.out.println("select 错误");
			return "";
		}

		return "";

	}
	
	public static int selectRole(User user) {
		int role = 0;
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select *" + " from user " + "where account = " + "'" + user.getAccount() + "'";
		 System.out.println(sql);
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next(); // 这句话必须要有
//			System.out.println(resultSet);
			if (user.getAccount().equals(resultSet.getString(1))) {
				return resultSet.getInt("role");
			} 
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("select 错误");
			return role;
		}

		return role;

	}
	
	public static void main(String[] args) {
		User user = new User("wanglei", "内蒙古大学", 1, "1", "aaa");
//		System.out.println("查找用户名是否存在： " + selectIsExist(user));
//		System.out.println("验证账户密码是否正确: " + selectIsRight(user));
		// User user2 = new User("wl", "内蒙古大学", 0, "1", "123");
		// // System.out.println("插入一条数据: " + insert(user2));
		// user2.setUserId("456");
		// System.out.println("更新一条数据: " + update(user2));
		System.out.println(selectId(user));;
	}

}
