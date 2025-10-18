package com.app.controller;

import java.io.IOException;
import java.sql.Connection;

import com.app.dao.UserDao;
import com.app.model.UserModel;
import com.app.utility.DBConnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Signup controller ethical Hacking ..........................");

		String fname = request.getParameter("firstName");
		String lname = request.getParameter("lastName");
		String uname = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("emailId");
		String phone = request.getParameter("phoneNo");
		System.out.println("fname : " + fname);
		System.out.println("fname : " + lname);
		System.out.println("fname : " + uname);
		System.out.println("fname : " + password);
		System.out.println("fname : " + email);
		System.out.println("fname : " + phone);

		UserModel user = new UserModel();
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setUserName(uname);
		user.setPassword(password);
		user.setEmailId(email);
		user.setPhoneNo(phone);
		UserDao dao = new UserDao();
		Connection db = DBConnection.getConnection();
		System.out.println("---------------------- My Connection -------------------------");
		System.out.println(db);

		boolean status = dao.addUser(user);
		System.out.println("status from controller signup " + status);
		if (status) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.include(request, response);

		}

	}

}
