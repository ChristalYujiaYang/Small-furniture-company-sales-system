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
import Dao.NewsDB;
import domain.goods;
import domain.news;

public class ShowServlet extends HttpServlet {
	public ShowServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	int PageNum = 1;
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
		GoodDB db = new GoodDB();
		List<goods> good = null;
		try {
			good=db.good();
			List<goods> pagelist = new LinkedList<goods>();
			PageNumCount = (good.size() / 9)+1;
			if (PageNum>PageNumCount){
				for (int i = (PageNumCount - 1) * 9; i < good.size(); i++)
					pagelist.add(good.get(i));
				PageNum=PageNumCount;
			}
			else if (PageNum<=0){
				for (int i = 0; i <9; i++)
					pagelist.add(good.get(i));
				PageNum=1;
			}
			else if (PageNum < PageNumCount){
				for (int i = (PageNum - 1) * 9; i < PageNum * 9; i++)
					pagelist.add(good.get(i));
			}
			else if (PageNum == PageNumCount){
				for (int i = (PageNum - 1) * 9; i < good.size(); i++)
					pagelist.add(good.get(i));
			}
			else if (PageNumCount==1){
				for (int i = 0; i < good.size(); i++)
					pagelist.add(good.get(i));
			}
			request.setAttribute("brand", pagelist);
			request.setAttribute("brand1", good);
			request.setAttribute("PageNum", PageNum);
			request.getRequestDispatcher("show.jsp").forward(request, response);
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
