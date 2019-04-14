package com.kiosk.persistance;

import java.sql.*;

import com.connection.OracleConnection;

public class DAO {
	public void list(String key, String value){

		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {

			conn = OracleConnection.connect();
			
			String sql = "";
			
			stmt = conn.prepareStatement(sql);
			
			
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {

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
		
		//return result;
	}
}
