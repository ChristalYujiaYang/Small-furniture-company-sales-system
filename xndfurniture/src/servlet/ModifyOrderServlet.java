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

public class ModifyOrderServlet extends HttpServlet {

	public ModifyOrderServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String q = request.getParameter("quantity");
		String p = request.getParameter("price");
		int orderid=Integer.parseInt(id);
		int quantity=Integer.parseInt(q);
		float price=Float.parseFloat(p);
		float totalprice=quantity*price;
		OrderDB dao = new OrderDB();
		dao.ChangeQuantity(orderid,quantity,totalprice);
		JOptionPane.showMessageDialog(null, "数量修改成功");
		response.sendRedirect(request.getContextPath()+"/ModifyServlet");
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doPost(request,response);
	}

	public void init() throws ServletException {
		// Put your code here

	}
}
