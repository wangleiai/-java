package shopCar;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.BookJDBC;
import jdbc.ShopCarJDBC;
import jdbc.UserJDBC;
import jdbcUtils.Book;
import jdbcUtils.ShopCar;
import jdbcUtils.User;

/**
 * Servlet implementation class shopCar
 */
@WebServlet("/shopCar")
public class shopCar extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account = (String)request.getSession().getAttribute("account");
		User user = new User(account, "", 0, "", "");
		String userId = UserJDBC.selectId(user);
		ArrayList<ShopCar> shopCars = ShopCarJDBC.selectByUserId(userId);
		request.getSession().setAttribute("shopCars", shopCars);
		ArrayList<Book> books = new ArrayList<>();
		for(int i=0;i<shopCars.size();i++) {
			books.add(BookJDBC.selectByBookId(shopCars.get(i).getBookId()));
		}
		request.getSession().setAttribute("books", books);
//		System.out.println("shopcar: "+ shopCars.size());
		response.sendRedirect("cart.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
