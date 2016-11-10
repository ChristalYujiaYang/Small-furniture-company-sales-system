package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import Dao.OrderDB;
import Dao.UserDB;
import domain.customer;

public class ClearServlet extends HttpServlet {
	public ClearServlet() {
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
		
		OrderDB dao = new OrderDB();
		dao.Clear(userid);
		JOptionPane.showMessageDialog(null, "订单信息修改成功");
		response.sendRedirect(request.getContextPath()+"/ModifyServlet");
        }
	
	public void init() throws ServletException {
		// Put your code here

	}
}
