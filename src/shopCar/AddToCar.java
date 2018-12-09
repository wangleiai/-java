package shopCar;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.BookJDBC;
import jdbc.ShopCarJDBC;
import jdbc.UserJDBC;
import jdbcUtils.Book;
import jdbcUtils.ShopCar;
import net.sf.json.JSONObject;
import uuid.Uuid;

/**
 * Servlet implementation class AddToCar
 */
@WebServlet("/AddToCar")
public class AddToCar extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
//		System.out.println("doPost");
		System.out.println(request.getParameter("index"));
		String index = request.getParameter("index");
		String cateId = request.getParameter("cateId");
		HttpSession hSession = request.getSession();
		ArrayList<Book> arrayList = (ArrayList)hSession.getAttribute("cateDetails");
		
		// 把书加入到购物车数据库 String bookId, String userId, String shopId
		System.out.println(arrayList);
		String bookId = arrayList.get(Integer.parseInt(index)).getBookId();
		String userId = (String)hSession.getAttribute("userId");
		System.out.println("bookId "+ bookId + " userId" +userId);
		ShopCar shopCar = new ShopCar(bookId, userId, Uuid.getUUID());
		boolean isAdd = ShopCarJDBC.insert(shopCar);
		JSONObject jsonObject = new JSONObject();
		
		// 这里把数据库里面的书的数目减一
		arrayList.get(Integer.parseInt(index)).setBookSurplus(arrayList.get(Integer.parseInt(index)).getBookSurplus()-1);
		// 这里把数据库里面书的销量加1
		arrayList.get(Integer.parseInt(index)).setBookSaled(arrayList.get(Integer.parseInt(index)).getBookSaled()+1);
		BookJDBC.update(arrayList.get(Integer.parseInt(index)));
//		arrayList.get(Integer.pa)
		if(isAdd) {
			jsonObject.put("flag", "true");
		}
		else {
			jsonObject.put("falg", "false");
		}
		

		out.println(jsonObject);
		

	}

}
