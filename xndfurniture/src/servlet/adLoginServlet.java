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

import Dao.AdministratorDB;
import Dao.UserDB;
import domain.administrator;
import domain.customer;

public class adLoginServlet extends HttpServlet {

	public adLoginServlet() {
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
		administrator admin = new administrator();
		admin.setAdminname(username);
		admin.setPassword(password);
		AdministratorDB db = new AdministratorDB();
		boolean isLogin;
		try
		{
			isLogin = db.login(admin);

			if(isLogin)
			{
				administrator administrator1=new administrator();
				administrator1=db.getAdmin(administrator1);
				HttpSession session = request.getSession();
				session.setAttribute("LoginAdmin",administrator1);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html;charset=utf-8");
				response.sendRedirect("admainpage.jsp"); 
				return;
			}else{ 
				JOptionPane.showMessageDialog(null, "账户名或密码错误，请重新登陆", "错误", JOptionPane.ERROR_MESSAGE);
				response.sendRedirect("adlogin.jsp");
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
