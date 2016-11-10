package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Dao.UserDB;

import domain.customer;

public class RegisterServlet extends HttpServlet {

	public RegisterServlet() {
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

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String username = new String(request.getParameter("username").getBytes("ISO8859_1"),"utf-8");
		String password = new String(request.getParameter("pwd").getBytes("ISO8859_1"),"utf-8");
		String phonenumber = new String(request.getParameter("phonenumber").getBytes("ISO8859_1"),"utf-8");
		String email = new String(request.getParameter("email").getBytes("ISO8859_1"),"utf-8");
		customer user = new customer();
		user.setUsername(username);
		user.setPassword(password);
		user.setPhonenumber(phonenumber);
		user.setEmail(email);
		UserDB dao = new UserDB();	
		boolean isRegister;
		try
		{
			isRegister = dao.register(user);

			if(isRegister)
			{
				dao.addUser(user);
				JOptionPane.showMessageDialog(null, "注册成功，请登陆");
				response.sendRedirect("login.jsp");
			}else{ 
				JOptionPane.showMessageDialog(null, "该邮箱已注册", "错误", JOptionPane.ERROR_MESSAGE);				
				response.sendRedirect("register.jsp");
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