package bookDelete;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.BookJDBC;
import jdbcUtils.Book;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class DoDelete
 */
@WebServlet("/DoDelete")
public class DoDelete extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String index = request.getParameter("index");
		ArrayList< Book> bArrayList =(ArrayList<Book>) request.getSession().getAttribute("books");
		Book book = bArrayList.get(Integer.parseInt(index));

		bArrayList.remove(Integer.parseInt(index));
		request.getSession().setAttribute("books", bArrayList);
		JSONObject jsonObject = new JSONObject();
		boolean isDelete = BookJDBC.delete(book);
		if(isDelete)
			jsonObject.put("flag", "true");
		else
			jsonObject.put("flag", "false");
		response.getWriter().println(jsonObject.toString());
	}

}
