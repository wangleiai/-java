package doLoginAndRegist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.UserJDBC;
import jdbcUtils.User;
import uuid.Uuid;

@WebServlet("/Regist")
public class Regist extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = "";
		boolean isSuccess = true;
		request.setCharacterEncoding("utf-8");
		String account = request.getParameter("account");
		String address = request.getParameter("address");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		System.out.println(account + " " + address + " " + password1 + " " + password2);
		System.out.println(password1.equals(password2));
		if (!password1.equals(password2)) {
			System.out.println("注册密码两次不一样");
			isSuccess = false;
			msg = "注册密码两次不一样";
			request.getSession().setAttribute("isRegist", "false");
			request.getSession().setAttribute("regMsg", msg);
			
			// 注册失败停留在这个页面
			request.getRequestDispatcher("/signup.jsp").forward(request, response);
			return;
		}

		// 判断用户名是否存在
		if (UserJDBC.selectIsExist(new User(account, address, 0, "2", password2))) {
			System.out.println("用户名以及存在");
			msg = "用户名以及存在";
			isSuccess = false;
		} else {
			try {
				System.out.println("注册新用户");
				User user = new User(account, address, 0, Uuid.getUUID(), password2);
				UserJDBC.insert(user);
				System.out.println("注册成功");
				isSuccess = true;
			} catch (Exception e) {
				// TODO: handle exception
			}

		}

		// 注册成功
		if (isSuccess) {
			// 设置session
			request.getSession().setMaxInactiveInterval(1800);
			HttpSession hSession = request.getSession();
			hSession.setAttribute("isRegist", "true");
			hSession.setAttribute("regMsg", "注册成功");
//			hSession.setAttribute(arg0, arg1);
			// 注册成功的话，跳转到登陆页面
			response.sendRedirect("/bookShopping/signin.jsp");
		} else {
			request.getSession().setAttribute("isRegist", "false");
			request.getSession().setAttribute("regMsg", msg);
			// 注册失败停留在这个页面
			request.getRequestDispatcher("/signup.jsp").forward(request, response);
		}
	}

}
