package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.app.model.UserModel;
import com.app.utility.DBConnection;

public class DashboardDao implements DashboardDaoInterface {
	UserModel user = new UserModel() ;
	@Override
	public UserModel getUserDetails(String username) {
		
		try {
			Connection conn = DBConnection.getConnection();
			String sql = "SELECT firstName, lastName, userName, phoneNo, emailId FROM users where userName = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				user.setFirstName(rs.getString(1));
				user.setLastName(rs.getString(2));
				user.setUserName(rs.getString(3));
				user.setEmailId(rs.getString(4));
				user.setPhoneNo(rs.getString(5));
				
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return user;
	}

}
