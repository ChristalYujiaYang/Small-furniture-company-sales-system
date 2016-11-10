package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.OrderDB;
import Dao.UserDB;
import domain.customer;
import domain.order;

public class DesignServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DesignServlet() {
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
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        customer loginUser = (customer)session.getAttribute("LoginUser");
        if(session.getAttribute("LoginUser")==null){
        	out.print("<script>alert('请登录后执行操作！');location='login.jsp';</script>");
        }
        else{
        	
        	request.getRequestDispatcher("design.jsp").forward(request, response);
        }
	}

	public void init() throws ServletException {
		// Put your code here

	}
}
