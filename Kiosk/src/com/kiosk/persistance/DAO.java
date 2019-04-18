package com.kiosk.persistance;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.connection.OracleConnection;
import com.kiosk.domain.Category_;
import com.kiosk.domain.DetailPayment;
import com.kiosk.domain.Item;
import com.kiosk.domain.LastPayment;
import com.kiosk.domain.Material;
import com.kiosk.domain.Order;
import com.kiosk.domain.Payment;
import com.kiosk.domain.PaymentList;
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

	public List<Item> list_Item(String key, String value){

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
			
			stmt.setString(1, key);
			
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
	
	public List<Material> list_Material(String key, String value){

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
			
			stmt.setString(1, key);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String materialId = rs.getString("MaterialId");
				String categoryId = rs.getString("CategoryId");
				String materialName = rs.getString("MaterialName");
				
				result.add(new Material(materialId, categoryId, materialName));
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
	
	public List<Category_> list_Category(String key, String value){

		List<Category_> result = new ArrayList<Category_>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT CategoryId, CategoryName \r\n" + 
					"    FROM Category_";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String categoryId = rs.getString("CategoryId");
				String categoryName = rs.getString("CategoryName");
				
				result.add(new Category_(categoryId, categoryName));
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
	
	public String new_LastPaymentid(){

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
	
	public String getAdminPw(){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT adminpw FROM admin_";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getString("adminpw");
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
	
	public String new_Itemid(){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getString("ItemId");
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
	
	public int getCount(String date){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT COUNT(*) count\r\n" + 
					"    FROM LastPayment \r\n" + 
					"    WHERE LastPaymentDate = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, date);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt("count");
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
	
	public int getCount2(String date){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT COUNT(*) count\r\n" + 
					"    FROM LastPayment \r\n" + 
					"    WHERE TO_CHAR(LastPaymentDate,'YYYYMM') = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, date);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt("count");
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
	
	public List<LastPayment> getDayTotal(String date){

		List<LastPayment> result = new ArrayList<LastPayment>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT lastpaymentdate, SUM(lastpaymentmoney) sum_\r\n" + 
					"FROM LastPayment\r\n" + 
					"WHERE TO_CHAR(lastpaymentdate,'YYYY-MM') = ? \r\n" + 
					"GROUP BY lastpaymentdate\r\n" + 
					"ORDER BY lastpaymentdate";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, date);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String lastpaymentdate = rs.getString("lastpaymentdate").substring(0,10);
				int sum_ = rs.getInt("sum_");
				
				result.add(new LastPayment(lastpaymentdate, sum_));
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
	
	public List<LastPayment> getMonth(){

		List<LastPayment> result = new ArrayList<LastPayment>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT RANK() OVER(ORDER BY TO_CHAR(LastPaymentDate,'YYYY-MM')) num_\r\n" + 
					"        ,TO_CHAR(LastPaymentDate,'YYYY-MM') month_, SUM(lastpaymentmoney) price_\r\n" + 
					"    FROM LastPayment\r\n" + 
					"    GROUP BY TO_CHAR(LastPaymentDate,'YYYY-MM')";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				int num_ = rs.getInt("num_");
				String month_ = rs.getString("month_");
				int price_ = rs.getInt("price_");
				
				result.add(new LastPayment(num_, month_, price_));
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
	
	public List<DetailPayment> getDay(String date){

		List<DetailPayment> result = new ArrayList<DetailPayment>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT i.itemname, total.cnt_, total.price_\r\n" + 
					"FROM item i\r\n" + 
					"    ,(SELECT d.itemid, sum(d.price) price_, sum(d.cnt) cnt_\r\n" + 
					"        FROM LastPayment l, detailPayment d\r\n" + 
					"        WHERE l.LastPaymentId = d.LastPaymentId\r\n" + 
					"        AND l.LastPaymentDate = ?\r\n" + 
					"        GROUP BY d.itemid) total\r\n" + 
					"WHERE i.itemid = total.itemid";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, date);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String itemname = rs.getString("itemname");
				int cnt_ = rs.getInt("cnt_");
				int price_ = rs.getInt("price_");
				
				result.add(new DetailPayment(itemname, price_, cnt_));
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
	
	public List<DetailPayment> getMonth(String date){

		List<DetailPayment> result = new ArrayList<DetailPayment>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT i.itemname, total.cnt_, total.price_\r\n" + 
					"FROM item i\r\n" + 
					"    ,(SELECT d.itemid, sum(d.price) price_, sum(d.cnt) cnt_\r\n" + 
					"        FROM LastPayment l, detailPayment d\r\n" + 
					"        WHERE l.LastPaymentId = d.LastPaymentId\r\n" + 
					"        AND TO_CHAR(l.LastPaymentDate,'YYYYMM') = ?\r\n" + 
					"        GROUP BY d.itemid) total\r\n" + 
					"WHERE i.itemid = total.itemid";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, date);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String itemname = rs.getString("itemname");
				int cnt_ = rs.getInt("cnt_");
				int price_ = rs.getInt("price_");
				
				result.add(new DetailPayment(itemname, price_, cnt_));
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
	
	public int getDetailCount(String itemid){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT COUNT(*) count_ FROM detailPayment\r\n" + 
					"WHERE itemid = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, itemid);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt("count_");
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
	
	public int del_Item(String itemId){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "DELETE FROM Item\r\n" + 
					"WHERE itemid = ?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, itemId);

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
	
	public int up_Item(String itemId, int newprice){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "UPDATE Item SET itemprice = ?\r\n" + 
					"WHERE itemid = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, newprice);
			stmt.setString(2, itemId);
			

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
	
	public int del_Material(String itemId){

		int result = -1;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "DELETE FROM Material\r\n" + 
					"WHERE Materialid = ?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, itemId);

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
	
	public String new_Item(Item item){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)\r\n" + 
					"VALUES(?, ?, ?, ?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, item.getItemId());
			stmt.setString(2, item.getCategoryId());
			stmt.setString(3, item.getItemName());
			stmt.setInt(4, item.getItemPrice());
			
			stmt.executeUpdate();
			
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
	
	public String new_Material(Material item){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "INSERT INTO Material(MaterialId, CategoryId, MaterialName)\r\n" + 
					"VALUES(?, ?, ?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, item.getMaterialId());
			stmt.setString(2, item.getCategoryId());
			stmt.setString(3, item.getMaterialName());
			
			stmt.executeUpdate();
			
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
	
	public String new_Materialid(){

		String result = "";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getString("MaterialId");
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
	
	public List<Pointhistory> list_UserHistory(String key, String value){

		List<Pointhistory> result = new ArrayList<Pointhistory>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT l.LastPaymentDate, p.userphone, p.Point_, p.Gubun\r\n" + 
					"    FROM PointHistory p, Payment p1, User_ u, LastPayment l\r\n" + 
					"    WHERE p.lastpaymentid = p1.lastpaymentid\r\n" + 
					"    AND p.paymentlistid = p1.paymentlistid\r\n" + 
					"    AND p.userphone = u.userphone\r\n" + 
					"    AND l.lastpaymentid = p1.lastpaymentid\r\n" + 
					"    AND p.userphone = ?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, value);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String lastPaymentDate = rs.getString("LastPaymentDate");
				String userphone = rs.getString("userphone");
				int point_ = rs.getInt("Point_");
				String gubun = rs.getString("Gubun");
				
				result.add(new Pointhistory(userphone, point_,  gubun, lastPaymentDate));
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
	
	public int list_User(String key, String value){

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
	
	public int in_User(User_ user_){

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
	
	public int in_Pay(LastPayment l, List<DetailPayment> d, List<Payment> p, List<Pointhistory> ph, int point) {
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
	
	public List<PaymentList> list_Payment(String key, String value){

		List<PaymentList> result = new ArrayList<PaymentList>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "SELECT paymentListId, paymentListName\r\n" + 
					"    FROM paymentList";
			
			stmt = conn.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				String paymentListId = rs.getString("paymentListId");
				String paymentListName = rs.getString("paymentListName");
				
				result.add(new PaymentList(paymentListId, paymentListName));
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
}
