package Dao;

import getConnection.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import domain.feedback;
import domain.news;

public class FeedbackDB {
	private Connection conn;
	private PreparedStatement pstat;
	String sql="";
	/**
	 * 用户留言
	 */
	public void addFeedback(feedback message){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		conn = GetConnection.getConnection();
		sql = "insert into feedback(username,feedbacktitle,feedbackcontent,time) values(?,?,?,?)";
		try{
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,message.getUsername());
			pstat.setString(2,message.getFeedbacktitle());
			pstat.setString(3,message.getFeedbackcontent());
			pstat.setString(4,df.format(new Date()));
			pstat.executeUpdate();
			pstat.close();
			conn.close();

		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("未能成功插入");
		}
	}
	public boolean feedback(feedback message) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from feedback where username=? and feedbacktitle=? and feedbackcontent=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, message.getUsername());
		pstat.setString(2, message.getFeedbacktitle());
		pstat.setString(3, message.getFeedbackcontent());
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
	public List<feedback> feedback() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from feedback";//查询语句  
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<feedback> list=new ArrayList<feedback>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				feedback feedback1=new feedback();
				feedback1.setFeedbackid(rs.getInt(1));
				feedback1.setFeedbacktitle(rs.getString(3));
				feedback1.setUsername(rs.getString(2));
				feedback1.setFeedbackcontent(rs.getString(4));
				feedback1.setTime(rs.getDate(5));
				list.add(feedback1);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}

}
