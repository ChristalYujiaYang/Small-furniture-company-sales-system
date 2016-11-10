package Dao;

import getConnection.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.goods;
import domain.outcome;

public class OutcomeDB {
	private Connection conn;
	private PreparedStatement pstat;
	public List<outcome> outcome() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from outcome";//查询语句  
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<outcome> list=new ArrayList<outcome>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				outcome cases=new outcome();
				cases.setOutcomeid(rs.getInt(1));
				cases.setCasename(rs.getString(2));
				cases.setDescribe(rs.getString(3));
				cases.setWebsite(rs.getString(4));
				cases.setPhoto1(rs.getString(5));
				cases.setPhoto2(rs.getString(6));
				cases.setPhoto3(rs.getString(7));
				cases.setPhoto4(rs.getString(8));
				cases.setPhoto5(rs.getString(9));
				cases.setPhoto6(rs.getString(10));
				cases.setPhoto7(rs.getString(11));
				list.add(cases);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}
	public List<outcome> findcases(outcome outcomes) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from outcome where outcomeid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, outcomes.getOutcomeid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<outcome> list=new ArrayList<outcome>();//创建取结果的列表
		try {
			while (rs.next()){ 
				outcome cases=new outcome();
				cases.setOutcomeid(rs.getInt(1));
				cases.setCasename(rs.getString(2));
				cases.setDescribe(rs.getString(3));
				cases.setPhoto1(rs.getString(5));
				cases.setPhoto2(rs.getString(6));
				cases.setPhoto3(rs.getString(7));
				cases.setPhoto4(rs.getString(8));
				cases.setPhoto5(rs.getString(9));
				cases.setPhoto6(rs.getString(10));
				cases.setPhoto7(rs.getString(11));
				list.add(cases);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	public List<outcome> findcases1(outcome outcomes) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from outcome where outcomeid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, outcomes.getOutcomeid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<outcome> list=new ArrayList<outcome>();//创建取结果的列表
		try {
			while (rs.next()){ 
				outcome cases=new outcome();
				cases.setOutcomeid(rs.getInt(1));
				cases.setCasename(rs.getString(2));
				cases.setDescribe(rs.getString(3));
				cases.setWebsite(rs.getString(4));
				list.add(cases);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}

}
