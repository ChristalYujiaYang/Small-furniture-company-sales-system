package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Dao.NewsDB;
import Dao.UserDB;
import domain.news;

public class GetpwdServlet extends HttpServlet {

	public GetpwdServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Email = request.getParameter("Email");
        UserDB userDao = new UserDB();
        boolean isEmail;
		try
		{
			isEmail = userDao.Email(Email);
        if (isEmail) {
            JOptionPane.showMessageDialog(null, "该邮箱不存在", "错误", JOptionPane.ERROR_MESSAGE);	
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{   
	        String password = userDao.findUserByEmail(Email);
			UserDB.SendEmail(password, Email);
			JOptionPane.showMessageDialog(null, "密码已发送到注册邮箱，请查看");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		 catch (SQLException e) 
		{
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
