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
import jdbcUtils.Book;
import jdbcUtils.ShopCar;
import net.sf.json.JSONObject;


@WebServlet("/Buy")
public class Buy extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 从sesstion里得到购物车列表
		ArrayList<ShopCar> shopCars = (ArrayList<ShopCar>)request.getSession().getAttribute("shopCars");
		// 拿到要删除的那个物品
		ShopCar car = shopCars.get(Integer.parseInt((String)request.getParameter("index")));
		// 删除掉并数据库对应+1
		shopCars.remove(Integer.parseInt((String)request.getParameter("index")));
		boolean isDel = ShopCarJDBC.delete(car);

		// 返回信息
		JSONObject jsonObject = new JSONObject();
		if(isDel )
			jsonObject.put("flag", "true");
		else {
			jsonObject.put("flag", "false");
		}
		response.getWriter().write(jsonObject.toString());
	}

}
