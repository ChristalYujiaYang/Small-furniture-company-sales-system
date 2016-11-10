package Dao;

import getConnection.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.administrator;
import domain.customer;

public class AdministratorDB {
	private Connection conn;
	private PreparedStatement pstat;
	String sql="";
	/**
	 * 
	 * 管理员登录
	 */
	public boolean login(administrator admin) throws SQLException{
		conn = GetConnection.getConnection();
		boolean i = false;
		sql = "select * from administrator where adminname=? and password=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, admin.getAdminname());
		pstat.setString(2, admin.getPassword());
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
	public administrator getAdmin(administrator administrator) throws SQLException{
		conn = GetConnection.getConnection();
		sql = "select adminid from administrator where adminname=? and password=?"; 
		pstat = conn.prepareStatement(sql);	  
		pstat.setString(1, administrator.getAdminname());
		pstat.setString(2, administrator.getPassword());
		ResultSet rs1 = (ResultSet) pstat.executeQuery();
		administrator administrator1 = new administrator();
		while(rs1.next()){
			administrator1.setAdminid(rs1.getInt("userid"));
		}
		conn.close();
		return administrator1;

	}
}
