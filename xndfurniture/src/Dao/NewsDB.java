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

public class NewsDB {	
	private Connection conn;
	private PreparedStatement pstat;
	String sql="";
	public List<news> news() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from news where type=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, 1);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<news> list=new ArrayList<news>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				news news1=new news();
				news1.setNewsid(rs.getInt(1));
				news1.setText(rs.getString(3));
				news1.setTitle(rs.getString(2));
				news1.setTime(rs.getDate(4));
				list.add(news1);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}
	public List<news> findnews(news news) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select title,text from news where newsid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, news.getNewsid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<news> list=new ArrayList<news>();//创建取结果的列表
		try {
			while (rs.next()){ 
				news news1=new news();
				news1.setTitle(rs.getString(1));
				news1.setText(rs.getString(2));
				list.add(news1);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	public void addNews(news news){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		conn = GetConnection.getConnection();
		sql = "insert into news(title,text,time,type) values(?,?,?,?)";
		try{
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,news.getTitle());
			pstat.setString(2,news.getText());
			pstat.setString(3,df.format(new Date()));
			pstat.setInt(4,1);
			pstat.executeUpdate();
			pstat.close();
			conn.close();

		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("未能成功插入");
		}
	}
	public boolean news(news news) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from news where title=? and text=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, news.getTitle());
		pstat.setString(2, news.getText());
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
}
