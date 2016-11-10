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

import Dao.FeedbackDB;
import Dao.NewsDB;
import domain.feedback;
import domain.news;

public class messageservlet extends HttpServlet {
	int PageNum = 1;
	int PageNumCount;
	String change = null;

	public messageservlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		change = request.getParameter("change");
		if (change != null) {
			if (change.equals("increase")) {
				PageNum++;
			} else if (change.equals("decrease")) {
				PageNum--;
			}
		}
		FeedbackDB dao = new FeedbackDB();
		List<feedback> feedback = null;
		try {
			feedback=dao.feedback();
			List<feedback> pagelist = new LinkedList<feedback>();
			PageNumCount = (feedback.size() / 2)+1;
			if (PageNum>PageNumCount){
				for (int i = (PageNumCount - 1) * 2; i < feedback.size(); i++)
					pagelist.add(feedback.get(i));
				PageNum=PageNumCount;
			}
			else if (PageNum<=0){
				for (int i = 0; i <2; i++)
					pagelist.add(feedback.get(i));
				PageNum=1;
			}
			else if (PageNum < PageNumCount){
				for (int i = (PageNum - 1) * 2; i < PageNum * 2; i++)
					pagelist.add(feedback.get(i));
			}
			else if (PageNum == PageNumCount){
				for (int i = (PageNum - 1) * 2; i < feedback.size(); i++)
					pagelist.add(feedback.get(i));
			}
			else if (PageNumCount==1){
				for (int i = 0; i < feedback.size(); i++)
					pagelist.add(feedback.get(i));
			}
			request.setAttribute("feedback", pagelist);
			request.setAttribute("PageNum", PageNum);
			request.getRequestDispatcher("feedback.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("错误");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		doGet(request, response);
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
