package com.controller;

import java.io.IOException;

import com.dao.RegistrationDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegistrationController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegistrationDao dao = new RegistrationDao();
		dao.getData(request.getParameter("fname"), request.getParameter("lname"), request.getParameter("email"), Integer.parseInt(request.getParameter("contact")), request.getParameter("pass"));
		
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}



	}


