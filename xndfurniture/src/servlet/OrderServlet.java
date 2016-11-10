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

import Dao.GoodDB;
import Dao.OrderDB;
import Dao.UserDB;
import domain.customer;
import domain.order;

public class OrderServlet extends HttpServlet {

	public OrderServlet() {
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
		String refer=request.getHeader("referer");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        customer loginUser = (customer)session.getAttribute("LoginUser");
        if(session.getAttribute("LoginUser")==null){
        	out.print("<script>alert('请登录后执行操作！');location='login.jsp';</script>");
        }
        else{
		int userid = loginUser.getUserid();
		String goodname = new String(request.getParameter("goodname").getBytes("ISO8859_1"),"utf-8");
		String photo1 = new String(request.getParameter("photo1").getBytes("ISO8859_1"),"utf-8");
		String goodid1 = new String(request.getParameter("goodid").getBytes("ISO8859_1"),"utf-8");
		String quantity1 = new String(request.getParameter("quantity").getBytes("ISO8859_1"),"utf-8");
		String price1 = new String(request.getParameter("price").getBytes("ISO8859_1"),"utf-8");
		int goodid = Integer.parseInt(goodid1);
		int quantity = Integer.parseInt(quantity1);
		Float price = Float.parseFloat(price1);
		Float totalprice = quantity*price;
		
		order order = new order();
		order.setUserid(userid);
		order.setGoodid(goodid);
		order.setPrice(price);
		order.setQuantity(quantity);
		order.setTotalprice(totalprice);
		order.setGoodname(goodname);
		order.setPhoto1(photo1);
		OrderDB dao = new OrderDB();
		dao.addOrder(order);
		JOptionPane.showMessageDialog(null, "预订成功");
		GoodDB db=new GoodDB();
		db.ordernumberadd(goodid,quantity);
		response.sendRedirect(refer);
        }
	}

	public void init() throws ServletException {
		// Put your code here

	}
}
