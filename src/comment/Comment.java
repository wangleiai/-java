package comment;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.CommentJDBC;

/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Comment do get");
		String bookId = request.getParameter("bookId");
		System.out.println("bookId" + bookId);
		// 根据bookid查找cooment，
		ArrayList<jdbcUtils.Comment> cArrayList =  CommentJDBC.selectByBookId( bookId);
		System.out.println(cArrayList);
		// 放到session里面
		request.getSession().setAttribute("comment", cArrayList);
		request.getSession().setAttribute("bookId", bookId);
		response.sendRedirect("comment.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
