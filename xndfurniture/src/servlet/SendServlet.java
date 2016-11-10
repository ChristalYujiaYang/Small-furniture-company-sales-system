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

import Dao.NewsDB;
import domain.administrator;
import domain.news;

public class SendServlet extends HttpServlet {

	public SendServlet() {
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
	throws ServletException, IOException {response.setContentType("text/html");
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    administrator loginAdmin = (administrator)session.getAttribute("LoginAdmin");
    if(session.getAttribute("LoginAdmin")==null){
    	out.print("<script>alert('请登录后执行操作！');location='adlogin.jsp';</script>");
    }
    else{
    	request.getRequestDispatcher("sendnews.jsp").forward(request, response);
    }
			
	}
	public void init() throws ServletException {
		// Put your code here
	}
}
