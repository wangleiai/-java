package doLoginAndRegist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import jdbc.CateJDBC;
import jdbc.UserJDBC;
import jdbcUtils.Cate;
import jdbcUtils.User;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		User user = new User(account, "", 0, "", password);
		System.out.println(user);
		if(UserJDBC.selectIsRight(user)) {
			System.out.println("登陆成功");
			request.getSession().setMaxInactiveInterval(1800);
			HttpSession hsSession = request.getSession();
			hsSession.setAttribute("isLogin", "true");
			hsSession.setAttribute("account", account);
			
			hsSession.setAttribute("userId", UserJDBC.selectId(new User(account, "", 0, "", "")));
			ArrayList<Cate> cates = CateJDBC.selectAll();
			hsSession.setAttribute("cates", cates);
			
			
			System.out.println("role: " + UserJDBC.selectRole(user));
			if(UserJDBC.selectRole(user)==0) {
				response.sendRedirect("/bookShopping/index.jsp");
			}
			else {
				response.sendRedirect("/bookShopping/admin.jsp");
			}
			
		}
		else {
			System.out.println("登陆失败");
			request.getSession().setAttribute("isLogin", "false");
			request.getRequestDispatcher("/signin.jsp").forward(request, response);
		}
		
		System.out.println(account);

//		doGet(request, response);
	}

}
