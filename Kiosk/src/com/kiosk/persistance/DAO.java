package com.kiosk.persistance;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.connection.OracleConnection;
import com.kiosk.domain.DetailPayment;
import com.kiosk.domain.Item;
import com.kiosk.domain.LastPayment;
import com.kiosk.domain.Material;
import com.kiosk.domain.Order;
import com.kiosk.domain.Payment;
import com.kiosk.domain.Pointhistory;
import com.kiosk.domain.SubOrder;
import com.kiosk.domain.User_;

public class DAO {
	
	private Order order;
	
	public DAO(String date, List<SubOrder> sub) {
		order = new Order(date, sub);
	}
	
	public Order getOrder() {
		return order;
	}

	public List<Item> itemList(String key, String value){

		List<Item> result = new ArrayList<Item>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT itemid, categoryid, itemname, itemprice\r\n" + 
					"    FROM Item\r\n" + 
					"    WHERE categoryid = ?\r\n" + 
					"    ORDER BY itemid";
			
			stmt = conn.prepareStatement(sql);
			
			if(key.equals("sandwitch")) {
				stmt.setString(1, "C001");
			}else if(key.equals("side")) {
				stmt.setString(1, "C002");
			}
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String itemid = rs.getString("itemid");
				String categoryid = rs.getString("categoryid");
				String itemname = rs.getString("itemname");
				int itemprice = rs.getInt("itemprice");
				
				result.add(new Item(itemid, categoryid, itemname, itemprice));
			}
			
			rs.close();
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		return result;
	}
	
	public List<Material> MaterialList(String key, String value){

		List<Material> result = new ArrayList<Material>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT MaterialId, CategoryId, MaterialName\r\n" + 
					"    FROM Material\r\n" + 
					"    WHERE categoryid = ?\r\n" + 
					"    ORDER BY MaterialId";
			
			stmt = conn.prepareStatement(sql);
			
			if(key.equals("bread")) {
				stmt.setString(1, "C003");
			}else if(key.equals("vegitable")) {
				stmt.setString(1, "C004");
			}else if(key.equals("souce")) {
				stmt.setString(1, "C005");
			}
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String MaterialId = rs.getString("MaterialId");
				String CategoryId = rs.getString("CategoryId");
				String MaterialName = rs.getString("MaterialName");
				
				result.add(new Material(MaterialId, CategoryId, MaterialName));
			}
			
			rs.close();
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		return result;
	}
	
	public String newLastPaymentid(){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId),2, 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getString("lastPaymentId");
			}
			
			rs.close();
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		return result;
	}
	
	public int User_List(String key, String value){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT userPoint\r\n" + 
					"FROM user_\r\n" + 
					"WHERE userPhone = ?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, value);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt("userPoint");
			}
			
			rs.close();
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		return result;
	}
	
	public int InUser(User_ user_){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "INSERT INTO user_(UserPhone, UserPoint)\r\n" + 
					"VALUES(?, ?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, user_.getUserPhone());
			stmt.setInt(2, user_.getUserPoint());

			result = stmt.executeUpdate();
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		return result;
	}
	
	public int InPay(LastPayment l, List<DetailPayment> d, List<Payment> p, List<Pointhistory> ph, int point) {
		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			
			conn = OracleConnection.connect();

			conn.setAutoCommit(false); 

			String sql1 = "INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)\r\n" + 
					"VALUES(?, ?, ?)";
			
			stmt = conn.prepareStatement(sql1);
			
			stmt.setString(1, l.getLastPaymentId());
			stmt.setString(2, l.getLastPaymentDate());
			stmt.setInt(3, l.getLastPaymentMoney());
			
			stmt.executeUpdate();
			stmt.close();
			
			for(DetailPayment d1 : d) {
				String sql2 = "INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)\r\n" + 
						"VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)\r\n" + 
						",?, ?, ?, ?)";
				
				stmt = conn.prepareStatement(sql2);
				
				stmt.setString(1, d1.getLastPaymentId());
				stmt.setString(2, d1.getItemId());
				stmt.setInt(3, d1.getPrice());
				stmt.setInt(4, d1.getCnt());
				
				stmt.executeUpdate();
				stmt.close();
			}
			
			for(Payment p1 : p) {
				String sql3 = "INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)\r\n" + 
						"VALUES(?, ?, ?)";
				
				stmt = conn.prepareStatement(sql3);
				
				stmt.setString(1, p1.getLastPaymentId());
				stmt.setString(2, p1.getPaymentListId());
				stmt.setInt(3, p1.getPaymentMoney());
				
				stmt.executeUpdate();
				stmt.close();
			}
			
			for(Pointhistory ph1 : ph) {
				String sql5 = "INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserPhone, Point_, Gubun)\r\n" + 
						"VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId),2, 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)\r\n" + 
						",?, ?, ?, ?, ?)";
				
				stmt = conn.prepareStatement(sql5);
				
				stmt.setString(1, ph1.getLastPaymentId());
				stmt.setString(2, ph1.getPaymentListId());
				stmt.setString(3, ph1.getUserphone());
				stmt.setInt(4, ph1.getPoint_());
				stmt.setString(5, ph1.getGubun());
				
				stmt.executeUpdate();
				stmt.close();
				
				String sql6 = "UPDATE User_ SET userpoint = ?\r\n" + 
						"WHERE userphone = ?";
				
				stmt = conn.prepareStatement(sql6);
				
				if(ph1.getGubun().equals("적립")) {
					stmt.setInt(1, point+ph1.getPoint_());
				}else{
					stmt.setInt(1, point-ph1.getPoint_());
					point = point-ph1.getPoint_();
				}
				stmt.setString(2, ph1.getUserphone());
				
				stmt.executeUpdate();
				stmt.close();
			}
			
			//커밋
			conn.commit();
			
			//입금 후 잔액 변동
			result = l.getLastPaymentMoney();

		}catch(ClassNotFoundException | SQLException e) {
			try {
				//롤백
				conn.rollback();
			}catch(SQLException e1) {
				e.printStackTrace();
			}
			
		} finally {
			 try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }
		      try{
		        	 OracleConnection.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }
		}
		
		
		return result;
	}
}
