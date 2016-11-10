package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Dao.UserDB;
import domain.customer;

public class ModifyUserServlet extends HttpServlet {

	public ModifyUserServlet() {
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
        HttpSession session = request.getSession();
        customer loginUser = (customer)session.getAttribute("LoginUser");
		int userid = loginUser.getUserid();
		String username = new String(request.getParameter("username").getBytes("ISO8859_1"),"utf-8");
		String password = new String(request.getParameter("pwd").getBytes("ISO8859_1"),"utf-8");
		String phonenumber = new String(request.getParameter("phonenumber").getBytes("ISO8859_1"),"utf-8");
		
		customer user = new customer();
		user.setUserid(userid);
		user.setUsername(username);
		user.setPassword(password);
		user.setPhonenumber(phonenumber);
		UserDB dao = new UserDB();
		dao.usermodify(user);
		JOptionPane.showMessageDialog(null, "个人信息修改成功");
		response.sendRedirect(request.getContextPath()+"/ModifyServlet");
        }
	
	public void init() throws ServletException {
		// Put your code here

	}
}
