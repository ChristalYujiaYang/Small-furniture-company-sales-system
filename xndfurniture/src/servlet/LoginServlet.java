package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.xml.registry.infomodel.User;

import Dao.UserDB;

import domain.customer;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String username = new String (request.getParameter("txtUserName").getBytes("ISO8859_1"),"UTF-8");
		String password = new String (request.getParameter("txtPassword").getBytes("ISO8859_1"),"UTF-8");
		customer user = new customer();
		user.setEmail(username);
		user.setPassword(password);
		UserDB db = new UserDB();
		boolean isLogin;
		try
		{
			isLogin = db.login(user);

			if(isLogin)
			{
				customer user1=new customer();
				user1=db.getuser(user);
				HttpSession session = request.getSession();
				session.setAttribute("LoginUser",user1);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html;charset=utf-8");
				out.println("<script language = javascript>window.history.go(-2)</script>"); 
				return;
			}else{ 
				JOptionPane.showMessageDialog(null, "用户名或密码错误，请重新登陆", "错误", JOptionPane.ERROR_MESSAGE);
				response.sendRedirect("login.jsp");
			}

		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
