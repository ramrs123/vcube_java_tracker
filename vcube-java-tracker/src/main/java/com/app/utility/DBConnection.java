package com.app.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
 

	public static Connection getConnection() {
		Connection con = null;
		try {
			System.out.println("-------------->1");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("-------------->2");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch59", "root", "root");
			System.out.println("-------------->3");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return con;
	}
}
