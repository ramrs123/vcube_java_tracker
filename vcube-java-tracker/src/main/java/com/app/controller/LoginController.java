package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.app.dao.ModuleDao;
import com.app.dao.UserDao;
import com.app.model.ModuleModel;
import com.app.model.UserModel;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	// private static final long serialVersionUID = 1L;

	public LoginController() {

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDao dao = new UserDao();
		UserModel user = new UserModel();
		
		user.setUserName(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user = dao.getUserDetails(request.getParameter("username"));
		
		//Module
		
		ModuleDao m = new ModuleDao();
		ModuleModel mm = new ModuleModel();
		
	

		if (dao.verifyUser(user)) {
			HttpSession session = request.getSession();
			session.setAttribute("loggedInUser", user);
			response.sendRedirect("dashboard.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}

	}

}
