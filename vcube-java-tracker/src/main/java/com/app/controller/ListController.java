package com.app.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.app.dao.ModuleDao;
import com.app.model.ModuleModel;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/list")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModuleDao m=new ModuleDao();
		List<ModuleModel> list = m.getAllModules();
		request.setAttribute("li", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
		rd.forward(request, response);
		
	}



}
