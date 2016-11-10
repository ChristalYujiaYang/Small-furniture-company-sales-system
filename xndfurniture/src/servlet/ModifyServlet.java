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
import javax.swing.JOptionPane;

import Dao.GoodDB;
import Dao.NewsDB;
import Dao.OrderDB;
import Dao.UserDB;
import domain.customer;
import domain.news;
import domain.order;

public class ModifyServlet extends HttpServlet {
	int PageNum = 1;
	int PageNumCount;
	String change = null;
	public ModifyServlet() {
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
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        customer loginUser = (customer)session.getAttribute("LoginUser");
        if(session.getAttribute("LoginUser")==null){
        	out.print("<script>alert('请登录后执行操作！');location='login.jsp';</script>");
        }
        else{
        	int userid = loginUser.getUserid();
    		customer user=new customer();
    		user.setUserid(userid);
    		UserDB db=new UserDB();	
    		List<customer> findusers = null;
    		change = request.getParameter("change");
    		if (change != null) {
    			if (change.equals("increase")) {
    				PageNum++;
    			} else if (change.equals("decrease")) {
    				PageNum--;
    			}
    		}
    		OrderDB dao=new OrderDB();
    		List<order> findorders = null;
    		try {
    			findusers=db.findusers(user);			
    			request.setAttribute("findusers", findusers);
    			findorders=dao.findorders(user);    			
    			List<order> pagelist = new LinkedList<order>();
    			PageNumCount = (findorders.size() / 3)+1;
    			if (PageNum>PageNumCount){
    				for (int i = (PageNumCount - 1) * 3; i < findorders.size(); i++)
    					pagelist.add(findorders.get(i));
    				PageNum=PageNumCount;
    			}
    			else if (PageNum<=0){
    				for (int i = 0; i <3; i++)
    					pagelist.add(findorders.get(i));
    				PageNum=1;
    			}
    			else if (PageNum < PageNumCount){
    				for (int i = (PageNum - 1) * 3; i < PageNum * 3; i++)
    					pagelist.add(findorders.get(i));
    			}
    			else if (PageNum == PageNumCount){
    				for (int i = (PageNum - 1) * 3; i < findorders.size(); i++)
    					pagelist.add(findorders.get(i));
    			}
    			else if (PageNumCount==1){
    				for (int i = 0; i < findorders.size(); i++)
    					pagelist.add(findorders.get(i));
    			}
    			request.setAttribute("findorders", pagelist);
    			request.setAttribute("PageNum", PageNum);
    			int i=0;
    			float count=0;
    			for(i=0;i<pagelist.size();i++){
    			count=count+pagelist.get(i).getTotalprice();
    			}
    			request.setAttribute("totalprice", count);
    			request.getRequestDispatcher("modify.jsp").forward(request, response);
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    			System.out.println("错误");
    		}
		
        }
	}

	public void init() throws ServletException {
		// Put your code here

	}
}
