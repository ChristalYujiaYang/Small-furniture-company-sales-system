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

public class MakesureServlet extends HttpServlet {

	public MakesureServlet() {
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
		String id = request.getParameter("id");
		int orderid=Integer.parseInt(id);
		OrderDB dao = new OrderDB();
		dao.Makesure(orderid);
		JOptionPane.showMessageDialog(null, "订单确认成功");
		response.sendRedirect(request.getContextPath()+"/ShowoServlet");
        }
	
	public void init() throws ServletException {
		// Put your code here

	}
}
