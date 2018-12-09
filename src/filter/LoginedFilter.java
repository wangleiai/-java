package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpServer;

/**
 * Servlet Filter implementation class LoginedFilter
 */
//@WebFilter("/LoginedFilter")
public class LoginedFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginedFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("filter !!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		HttpServletRequest request2=(HttpServletRequest) request;
        HttpServletResponse response2=(HttpServletResponse) response;
        // 根据session判断是否登陆，如果登陆了的话就不管，未登录调转到登陆页面
        if(request2.getSession().getAttribute("isLogin")==null) {
        	response2.sendRedirect("/bookShopping/signin.jsp");
        }
        else {
//        	chain.doFilter(request, response);
        }
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
