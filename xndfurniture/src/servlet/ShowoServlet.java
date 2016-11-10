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
import domain.administrator;
import domain.order;

public class ShowoServlet extends HttpServlet {
	public ShowoServlet() {
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
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        administrator loginAdmin = (administrator)session.getAttribute("LoginAdmin");
        if(session.getAttribute("LoginAdmin")==null){
        	out.print("<script>alert('请登录后执行操作！');location='adlogin.jsp';</script>");
        }
        else{
		change = request.getParameter("change");
		if (change != null) {
			if (change.equals("increase")) {
				PageNum++;
			} else if (change.equals("decrease")) {
				PageNum--;
			}
		}
		OrderDB db = new OrderDB();
		List<order> order = null;
		try {
			order=db.order();
			List<order> pagelist = new LinkedList<order>();
			PageNumCount = (order.size() / 10)+1;
			if (PageNum>PageNumCount){
				for (int i = (PageNumCount - 1) * 10; i < order.size(); i++)
					pagelist.add(order.get(i));
				PageNum=PageNumCount;
			}
			else if (PageNum<=0){
				for (int i = 0; i <10; i++)
					pagelist.add(order.get(i));
				PageNum=1;
			}
			else if (PageNum < PageNumCount){
				for (int i = (PageNum - 1) * 10; i < PageNum * 10; i++)
					pagelist.add(order.get(i));
			}
			else if (PageNum == PageNumCount){
				for (int i = (PageNum - 1) * 10; i < order.size(); i++)
					pagelist.add(order.get(i));
			}
			else if (PageNumCount==1){
				for (int i = 0; i < order.size(); i++)
					pagelist.add(order.get(i));
			}
			request.setAttribute("findorders", pagelist);
			request.setAttribute("PageNum", PageNum);
			request.getRequestDispatcher("orderinfo.jsp").forward(request, response);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("错误");
		}
        }
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		doGet(request, response);
	}

}
