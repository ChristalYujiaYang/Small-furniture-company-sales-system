package Dao;

import getConnection.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mail.MailSenderInfo;
import mail.SimpleMailSender;

import domain.customer;
import domain.news;

public class UserDB {
	private Connection conn;
	private PreparedStatement pstat;
	String sql="";
	/**
	 * 
	 * 用户登录
	 */
	public boolean login(customer user) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from customer where email=? and password=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, user.getEmail());
		pstat.setString(2, user.getPassword());
		ResultSet rs1 = (ResultSet) pstat.executeQuery();
		if (rs1.next())
		{
			i = true;
			rs1.close();
			pstat.close();
		}
		else 
		{
			i = false ;
			rs1.close();
			pstat.close();
		}
		conn.close();
		return i;

	}
	public customer getuser(customer user) throws SQLException{
		conn = GetConnection.getConnection();
		sql = "select userid from customer where email=? and password=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, user.getEmail());
		pstat.setString(2, user.getPassword());
		ResultSet rs1 = (ResultSet) pstat.executeQuery();
		customer user1 = new customer();
		while(rs1.next()){
			user1.setUserid(rs1.getInt("userid"));
		}
		conn.close();
		return user1;

	}
	/**
	 * 用户注册
	 */
	public boolean register(customer user) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from customer where email=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, user.getEmail());
		ResultSet rs1 = (ResultSet) pstat.executeQuery();
		if (rs1.next())
		{
			i = false;
			rs1.close();
			pstat.close();
		}
		else 
		{
			i = true ;
			rs1.close();
			pstat.close();
		}
		conn.close();
		return i;

	}
	public void addUser(customer user){
		conn = GetConnection.getConnection();
		sql = "insert into customer(username,password,phonenumber,email) values(?,?,?,?)";
		try{
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,user.getUsername());
			pstat.setString(2,user.getPassword());
			pstat.setString(3,user.getPhonenumber());
			pstat.setString(4,user.getEmail());
			pstat.executeUpdate();
			pstat.close();
			conn.close();

		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("未能成功插入");
		}
	}
	public List<customer> findusers(customer user) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from customer where userid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, user.getUserid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<customer> list=new ArrayList<customer>();//创建取结果的列表
		try {
			while (rs.next()){ 
				customer user1=new customer();
				user1.setUsername(rs.getString(2));
				user1.setPassword(rs.getString(3));
				user1.setPhonenumber(rs.getString(4));
				list.add(user1);
				//rs.close();
				//pstat.close();
			} 
			conn.close();
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	public void usermodify(customer user){
		String username=user.getUsername();
		String phonenumber=user.getPhonenumber();
		String password=user.getPassword();
		String sql1 = "update customer set username='"+username+"', password='"+password+"', phonenumber='"+phonenumber+"' where userid="+user.getUserid();//修改语句
		Connection conn=null;
		PreparedStatement stmt=null;
		int result=0;
		try {

			conn=GetConnection.getConnection();
			stmt=conn.prepareStatement(sql1);
			result=stmt.executeUpdate();		//执行成功返回修改行数
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("usermodify失败");
		}
	}
	public boolean Email(String email) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from customer where email=?"; 
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, email);
		ResultSet rs1 = (ResultSet) pstat.executeQuery();
		if (rs1.next())
		{
			i = false;
			rs1.close();
			pstat.close();
		}
		else 
		{
			i = true ;
			rs1.close();
			pstat.close();
		}
		conn.close();
		return i;

	}
	public String findUserByEmail(String email) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from customer where email=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, email);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		customer user1=new customer();
		try {
			while (rs.next()){
				user1.setPassword(rs.getString(3));
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return user1.getPassword();
	}
	public static void SendEmail(String password, String email){  
        //这个类主要是设置邮件
     MailSenderInfo mailInfo = new MailSenderInfo();   
     mailInfo.setMailServerHost("smtp.163.com");   
     mailInfo.setMailServerPort("25");   
     mailInfo.setValidate(true);   
     mailInfo.setUserName("xiongying13579@163.com");   
     mailInfo.setPassword("13032418135");//您的邮箱密码   
     mailInfo.setFromAddress("xiongying13579@163.com");   
     mailInfo.setToAddress(email);   
     mailInfo.setSubject("找回密码");   
     mailInfo.setContent(email+"的登陆密码为"+password+",请勿回复此邮件");   
        //这个类主要来发送邮件  
     SimpleMailSender sms = new SimpleMailSender();  
     sms.sendHtmlMail(mailInfo);//发送html格式
   } 
	public List<customer> customer() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from customer";//查询语句  
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<customer> list=new ArrayList<customer>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				customer customer1=new customer();
				customer1.setUsername(rs.getString(2));
				customer1.setPhonenumber(rs.getString(4));
				customer1.setEmail(rs.getString(5));
				list.add(customer1);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}
}
