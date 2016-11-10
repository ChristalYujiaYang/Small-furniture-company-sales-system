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

import Dao.GoodDB;
import Dao.OutcomeDB;
import domain.goods;
import domain.outcome;

public class OutcomeServlet extends HttpServlet {

	public OutcomeServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}int PageNum = 1;
	int PageNumCount;
	String change = null;

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
		OutcomeDB db = new OutcomeDB();
		List<outcome> outcomes = null;
		try {
			outcomes=db.outcome();
			List<outcome> pagelist = new LinkedList<outcome>();
			PageNumCount = (outcomes.size() / 6)+1;
			if (PageNum>PageNumCount){
				for (int i = (PageNumCount - 1) * 6; i < outcomes.size(); i++)
					pagelist.add(outcomes.get(i));
				PageNum=PageNumCount;
			}
			else if (PageNum<=0){
				for (int i = 0; i <6; i++)
					pagelist.add(outcomes.get(i));
				PageNum=1;
			}
			else if (PageNum < PageNumCount){
				for (int i = (PageNum - 1) * 6; i < PageNum * 6; i++)
					pagelist.add(outcomes.get(i));
			}
			else if (PageNum == PageNumCount){
				for (int i = (PageNum - 1) * 6; i < outcomes.size(); i++)
					pagelist.add(outcomes.get(i));
			}
			else if (PageNumCount==1){
				for (int i = 0; i < outcomes.size(); i++)
					pagelist.add(outcomes.get(i));
			}
			request.setAttribute("outcome", pagelist);
			request.setAttribute("PageNum", PageNum);
			request.getRequestDispatcher("outcome.jsp").forward(request, response);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
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
