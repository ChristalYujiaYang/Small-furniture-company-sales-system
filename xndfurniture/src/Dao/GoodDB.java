package Dao;

import getConnection.GetConnection;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import domain.goods;

public class GoodDB {
	private Connection conn;
	private PreparedStatement pstat;
	public List<goods> good() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from goods";//查询语句  
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<goods> list=new ArrayList<goods>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				goods brand=new goods();
				brand.setGoodid(rs.getInt(1));
				brand.setGoodname(rs.getString(2));
				brand.setDescribe(rs.getString(3));
				brand.setPhoto1(rs.getString(4));
				brand.setPhoto2(rs.getString(5));
				brand.setPhoto3(rs.getString(6));
				brand.setPhoto4(rs.getString(7));
				brand.setPhoto5(rs.getString(8));
				brand.setPhoto6(rs.getString(9));
				brand.setPrice(rs.getFloat(10));
				brand.setPhonenumber(rs.getString(11));
				brand.setOrdernumber(rs.getInt(12));
				list.add(brand);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}
	public List<goods> findgoods(goods goods) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from goods where goodid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, goods.getGoodid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<goods> list=new ArrayList<goods>();//创建取结果的列表
		try {
			while (rs.next()){ 
				goods brand=new goods();
				brand.setGoodid(rs.getInt(1));
				brand.setGoodname(rs.getString(2));
				brand.setDescribe(rs.getString(3));
				brand.setPhoto1(rs.getString(4));
				brand.setPhoto2(rs.getString(5));
				brand.setPhoto3(rs.getString(6));
				brand.setPhoto4(rs.getString(7));
				brand.setPhoto5(rs.getString(8));
				brand.setPhoto6(rs.getString(9));
				brand.setPrice(rs.getFloat(10));
				brand.setPhonenumber(rs.getString(11));
				brand.setOrdernumber(rs.getInt(12));
				list.add(brand);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	public List<goods> findfamous() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select top 2 * from goods where ordernumber in (select top 2 ordernumber order by ordernumber desc)";//查询语句
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<goods> list=new ArrayList<goods>();//创建取结果的列表
		try {
			while (rs.next()){ 
				goods brand=new goods();
				brand.setGoodid(rs.getInt(1));
				brand.setGoodname(rs.getString(2));
				brand.setDescribe(rs.getString(3));
				brand.setPhoto1(rs.getString(4));
				brand.setPrice(rs.getFloat(10));
				brand.setPhonenumber(rs.getString(11));
				brand.setOrdernumber(rs.getInt(12));
				list.add(brand);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	
	public void ordernumberadd(int id,int quantity){
		
		String sql = "select ordernumber from goods where goodid="+id;//查询语句  
		try {
			conn = GetConnection.getConnection(); 
			pstat = conn.prepareStatement(sql);
			ResultSet rs = (ResultSet) pstat.executeQuery();
			while (rs.next()){
			int count = rs.getInt(1);
			count=count+quantity;
			String sql1 = "update goods set ordernumber="+count+" where goodid="+id;//修改语句  
			Connection conn=null;
			PreparedStatement stmt=null;
			int result=0;
				try {
					conn=GetConnection.getConnection();
					stmt=conn.prepareStatement(sql1);
					result=stmt.executeUpdate();		//执行成功返回修改行数
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ordernumberadd出错");
		}
	}
}
