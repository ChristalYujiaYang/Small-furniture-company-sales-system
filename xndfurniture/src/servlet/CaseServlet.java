package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.GoodDB;
import Dao.OutcomeDB;
import domain.goods;
import domain.outcome;

public class CaseServlet extends HttpServlet {

	public CaseServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		outcome outcomes=new outcome();
		outcomes.setOutcomeid(id);
		OutcomeDB db=new OutcomeDB();
		List<outcome> findcases = null;
		try {
			if(id==2||id==4||id==3){
				findcases=db.findcases1(outcomes);
				request.setAttribute("findcases", findcases);
				request.getRequestDispatcher("cases1.jsp").forward(request, response);
			}
			else{
			findcases=db.findcases(outcomes);
			request.setAttribute("findcases", findcases);
			request.getRequestDispatcher("cases.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request, response);
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
