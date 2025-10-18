package com.app.dao;

import com.app.model.UserModel;

public interface UserDaoInterface

{

	public boolean addUser(UserModel user);
	public boolean verifyUser(UserModel user);
	public UserModel getUserDetails(String userName);
}
