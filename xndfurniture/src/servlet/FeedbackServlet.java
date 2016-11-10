package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Dao.FeedbackDB;
import Dao.NewsDB;
import domain.feedback;
import domain.news;

public class FeedbackServlet extends HttpServlet {

	public FeedbackServlet() {
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
		FeedbackDB dao = new FeedbackDB();
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String username = new String(request.getParameter("txtUserName").getBytes("ISO8859_1"),"utf-8");
		String feedbacktitle = new String(request.getParameter("txtTitle").getBytes("ISO8859_1"),"utf-8");
		String feedbackcontent = new String(request.getParameter("txtContent").getBytes("ISO8859_1"),"utf-8");
		feedback message = new feedback();
		message.setUsername(username);
		message.setFeedbacktitle(feedbacktitle);
		message.setFeedbackcontent(feedbackcontent);	
		dao.addFeedback(message);
		boolean isFeedback;
		try
		{
			isFeedback = dao.feedback(message);

			if(isFeedback)
			{
				JOptionPane.showMessageDialog(null, "留言成功");
				response.sendRedirect(request.getContextPath()+"/messageservlet");
			}else{ 
				JOptionPane.showMessageDialog(null, "留言失败", "错误", JOptionPane.ERROR_MESSAGE);				
				response.sendRedirect(request.getContextPath()+"/messageservlet");
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
