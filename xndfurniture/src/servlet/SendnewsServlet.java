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

import Dao.FeedbackDB;
import Dao.NewsDB;
import domain.administrator;
import domain.customer;
import domain.feedback;
import domain.news;

public class SendnewsServlet extends HttpServlet {

	public SendnewsServlet() {
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
		NewsDB dao = new NewsDB();
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String title = new String(request.getParameter("txtTitle").getBytes("ISO8859_1"),"utf-8");
		String content = new String(request.getParameter("txtContent").getBytes("ISO8859_1"),"utf-8");
		news news = new news();
		news.setTitle(title);
		news.setText(content);	
		dao.addNews(news);
		boolean isAddnews;
		try
		{
			isAddnews = dao.news(news);

			if(isAddnews)
			{
				System.out.println("yes");
				JOptionPane.showMessageDialog(null, "发布成功");
				response.sendRedirect("sendnews.jsp");
			}else{ 
				JOptionPane.showMessageDialog(null, "发布失败", "错误", JOptionPane.ERROR_MESSAGE);				
				response.sendRedirect("sendnews.jsp");
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
