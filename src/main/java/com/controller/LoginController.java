package com.controller;

import java.io.IOException;

import com.dao.LoginDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   LoginDao dao = new LoginDao();
	 
	  if( dao.getDetails(request.getParameter("email"))) {
		  RequestDispatcher rd = request.getRequestDispatcher("RegistrationDisplay.jsp");
	       rd.forward(request, response);
	}
	  }
	
}
