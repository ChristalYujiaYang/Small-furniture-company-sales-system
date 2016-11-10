package Dao;

import getConnection.GetConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.customer;
import domain.order;

public class OrderDB {
	private Connection conn;
	private PreparedStatement pstat;
	String sql="";

	public void addOrder(order order){
		conn = GetConnection.getConnection();
		sql = "insert into [order](userid,goodid,price,quantity,totalprice,goodname,photo1) values(?,?,?,?,?,?,?)";
		try{
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1,order.getUserid());
			pstat.setInt(2,order.getGoodid());
			pstat.setFloat(3,order.getPrice());
			pstat.setInt(4,order.getQuantity());
			pstat.setFloat(5,order.getTotalprice());
			pstat.setString(6,order.getGoodname());
			pstat.setString(7,order.getPhoto1());
			pstat.executeUpdate();
			pstat.close();
			conn.close();

		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("未能成功插入");
		}
	}
	public List<order> findorders(customer user) throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from [order] where userid=?";//查询语句  
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, user.getUserid());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<order> list=new ArrayList<order>();//创建取结果的列表
		try {
			while (rs.next()){ 
				order order1=new order();
				order1.setOrderid(rs.getInt(1));
				order1.setPrice(rs.getFloat(4));
				order1.setQuantity(rs.getInt(5));
				order1.setTotalprice(rs.getFloat(6));
				order1.setGoodname(rs.getString(7));
				order1.setPhoto1(rs.getString(8));
				order1.setType(rs.getString(9));
				list.add(order1);
			} 
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		}
		return list;
	}
	public void Clear(int userid){
		conn = GetConnection.getConnection();
		sql = "delete from [order] where userid="+userid;
		Connection conn=null;
		PreparedStatement stmt=null;
		int result=0;
			try {
				conn=GetConnection.getConnection();
				stmt=conn.prepareStatement(sql);
				result=stmt.executeUpdate();		//执行成功返回修改行数
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("Clear出错");
			}
	}
	public void Delete(int orderid){
		conn = GetConnection.getConnection();
		sql = "delete from [order] where orderid="+orderid;
		Connection conn=null;
		PreparedStatement stmt=null;
		int result=0;
			try {
				conn=GetConnection.getConnection();
				stmt=conn.prepareStatement(sql);
				result=stmt.executeUpdate();		//执行成功返回修改行数
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("Delete出错");
			}
	}
	public void ChangeQuantity(int orderid,int quantity,float totalprice){
		conn = GetConnection.getConnection();
		sql = "update [order] set quantity="+quantity+",totalprice="+totalprice+"where orderid="+orderid;
		Connection conn=null;
		PreparedStatement stmt=null;
		int result=0;
			try {
				conn=GetConnection.getConnection();
				stmt=conn.prepareStatement(sql);
				result=stmt.executeUpdate();		//执行成功返回修改行数
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("ChangeQuantity出错");
			}
	}
	public List<order> order() throws SQLException{
		conn = GetConnection.getConnection(); 
		String sql = "select * from [order]";//查询语句  
		pstat = conn.prepareStatement(sql);
		ResultSet rs = (ResultSet) pstat.executeQuery();
		List<order> list=new ArrayList<order>();//创建取结果的列表
		try { 
			while (rs.next()) {//共有多少条记录  
				order order1=new order();
				order1.setOrderid(rs.getInt(1));
				order1.setPrice(rs.getFloat(4));
				order1.setQuantity(rs.getInt(5));
				order1.setTotalprice(rs.getFloat(6));
				order1.setGoodname(rs.getString(7));
				order1.setPhoto1(rs.getString(8));
				order1.setType(rs.getString(9));
				list.add(order1);
			}  
		} catch (Exception e) {  
			// TODO Auto-generated catch block     
			e.printStackTrace();  
		} 
		return list;
	}
	public void Makesure(int orderid){
		String a="订单已确认";
		conn = GetConnection.getConnection();
		sql = "update [order] set type=? where orderid="+orderid;
		try{
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,a);
			pstat.executeUpdate();
			pstat.close();
			conn.close();

		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("makesure出错");
		}
	}
}
