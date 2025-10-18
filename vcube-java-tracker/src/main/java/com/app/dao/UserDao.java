package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.app.model.UserModel;
import com.app.utility.DBConnection;

public class UserDao implements UserDaoInterface {

	@Override
	public boolean addUser(UserModel user) {
		boolean status = false;
		try {
			Connection con = DBConnection.getConnection();
			System.out.println("---------->1");
			String query = "INSERT INTO users (firstName, lastName, userName, password, emailId, phoneNo) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getEmailId());
			ps.setString(6, user.getPhoneNo());

			int n = ps.executeUpdate();

			if (n > 0) {
				status = true;
			}

		} catch (Exception e) {

		}

		return status;

	}

	@Override
	public boolean verifyUser(UserModel user) {

		boolean status = false;
		try {
			Connection con = DBConnection.getConnection();

			String query = "SELECT userName, passWord FROM users WHERE userName = ? AND passWord = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String s = rs.getString(1);
				String pw = rs.getString(2);
				status = true;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	@Override
	public UserModel getUserDetails(String username) {
		UserModel user = null;
		try {
			String sql = "SELECT * FROM users WHERE userName = ?";
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				user = new UserModel();
			user.setFirstName(rs.getString(2)); //3 6 7 
			user.setLastName(rs.getString(3));
			user.setEmailId(rs.getString(6));
			user.setPhoneNo(rs.getString(7));
			
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
		
	}

}
