package doLoginAndRegist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.corba.se.spi.activation.Repository;

import jdbc.BookImageJDBC;
import jdbc.BookJDBC;
import jdbc.CateJDBC;
import jdbcUtils.Book;
import jdbcUtils.BookImage;
import jdk.internal.org.objectweb.asm.tree.analysis.SourceInterpreter;


@WebServlet("/CateDetails")
public class CateDetails extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cateId = request.getParameter("cate");
		ArrayList<Book> books = BookJDBC.selectByCateId(cateId);
		System.out.println(books.get(0));
//		HttpSession hSession = request.getSession();
//		hSession.setAttribute("cateDetails", books);
		// 从数据库里面把书对应的图片拿出来
		ArrayList<String> bImages = new ArrayList<>();
		for(int i=0;i<books.size();i++) {
			bImages.add(BookImageJDBC.selectByBookId(books.get(i).getBookId()));
		}
		
		request.setAttribute("cateDetails", books);
		// 放到session 里面
		request.getSession().setAttribute("cateDetails", books);
		request.getSession().setAttribute("bImages", bImages);
//		request.setAttribute("cateInfo", );
		request.getRequestDispatcher("/cateDetails.jsp").forward(request, response);
//		response.sendRedirect("/bookShopping/cateDetails.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
