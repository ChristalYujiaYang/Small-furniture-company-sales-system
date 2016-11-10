package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.GoodDB;
import domain.goods;

public class BrandServlet extends HttpServlet {

	public BrandServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GoodDB dao = new GoodDB();
		List<goods> good = null;
		try {
			good=dao.good();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("brand1", good);
		int id = Integer.parseInt(request.getParameter("id"));
		goods goods=new goods();
		goods.setGoodid(id);
		GoodDB db=new GoodDB();
		List<goods> findgoods = null;
		try {
			findgoods=db.findgoods(goods);
			request.setAttribute("findgoods", findgoods);
			request.getRequestDispatcher("Brand.jsp").forward(request, response);
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
