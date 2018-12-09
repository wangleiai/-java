package jdbc;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.valves.rewrite.Substitution.RewriteRuleBackReferenceElement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.prism.Presentable;

import jdbcUtils.Cate;

public class CateJDBC {
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
	
	public static boolean insert(Cate cate) {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "insert into cate (cateId, cateName) values (?,?)";
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.setString(1, cate.getCateId());
			preparedStatement.setString(2, cate.getCateName());
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
	
	public static ArrayList<Cate> selectAll() {
		Connection connection = getConn();
		PreparedStatement preparedStatement;
		String sql = "select *from cate";
		ArrayList<Cate> cArrayList = new ArrayList<>();
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Cate cate = new Cate(resultSet.getString("cateid"), resultSet.getString("cateName"), resultSet.getString("cateDec"));
//				System.out.println(resultSet.getString("cateName"));
				cArrayList.add(cate);
			}
			preparedStatement.close();
			connection.close();
			return cArrayList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cArrayList;
	}
	
	public static void main(String[] args) {
		Cate cate = new Cate("1", "11", "adsadsf");
//		System.out.println(insert(cate));
//		System.out.println(selectAll());
		ArrayList< Cate> cates = selectAll();
		for(int i=0;i<cates.size();i++) {
			System.out.println(cates.get(i));
		}
	}
}
