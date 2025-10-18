package com.app.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection2Modules {
	
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch59", "root", "root");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
}
