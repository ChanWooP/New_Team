package com.connection;

import java.sql.*;

public class OracleConnection {
    // JDBC driver name and database URL
    private static final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
    private static final String DB_URL = "jdbc:oracle:thin:Team/1234@211.238.142.52:1521:xe";
 
    private static Connection conn;
 
    // 单捞抛海捞胶 目池记 按眉 积己 皋家靛
    public static Connection connect() throws ClassNotFoundException, SQLException {
 
        // STEP 2: Register JDBC driver
        Class.forName(JDBC_DRIVER);
        // STEP 3: Open a connection
        conn = DriverManager.getConnection(DB_URL);
 
        return conn;
    }
 
    // 单捞抛海捞胶 目池记 按眉 家戈 皋家靛
    public static void close() throws SQLException {
        if (conn != null) {
            conn.close();
        }
    }
}
