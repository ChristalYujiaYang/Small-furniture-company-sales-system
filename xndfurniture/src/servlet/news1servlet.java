package servlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.NewsDB;
import domain.news;

public class news1servlet extends HttpServlet {
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
		NewsDB db = new NewsDB();
		List<news> news = null;
		try {
			news=db.news();
			List<news> pagelist = new LinkedList<news>();
			PageNumCount = (news.size() / 10)+1;
			if (PageNum>PageNumCount){
				for (int i = (PageNumCount - 1) * 10; i < news.size(); i++)
					pagelist.add(news.get(i));
				PageNum=PageNumCount;
			}
			else if (PageNum<=0){
				for (int i = 0; i <10; i++)
					pagelist.add(news.get(i));
				PageNum=1;
			}
			else if (PageNum < PageNumCount){
				for (int i = (PageNum - 1) * 10; i < PageNum * 10; i++)
					pagelist.add(news.get(i));
			}
			else if (PageNum == PageNumCount){
				for (int i = (PageNum - 1) * 10; i < news.size(); i++)
					pagelist.add(news.get(i));
			}
			else if (PageNumCount==1){
				for (int i = 0; i < news.size(); i++)
					pagelist.add(news.get(i));
			}
			request.setAttribute("news", pagelist);
			request.setAttribute("PageNum", PageNum);
			request.getRequestDispatcher("news1.jsp").forward(request, response);
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

}
