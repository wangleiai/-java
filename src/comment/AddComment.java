package comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.CommentJDBC;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class AddComment
 */
@WebServlet("/AddComment")
public class AddComment extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("addComment doPost");
		request.setCharacterEncoding("utf-8");
		JSONObject jsonObject = new JSONObject();

		String bookId = request.getParameter("bookId");
		String commentContent = request.getParameter("commentContent");
		System.out.println(commentContent);
		jdbcUtils.Comment comment = new jdbcUtils.Comment(bookId, (String) request.getSession().getAttribute("userId"),
				commentContent);
		
		if(CommentJDBC.insert(comment)) {
			jsonObject.put("flag", "true");

		}
		else {
			jsonObject.put("flag", "false");
		}
		response.getWriter().write(jsonObject.toString());
	}
}
