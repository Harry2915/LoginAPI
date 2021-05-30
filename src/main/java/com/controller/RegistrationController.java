package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.LoginDao;
import com.dao.RegistrationDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RegistrationController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegistrationDao dao = new RegistrationDao();
		 PrintWriter out = response.getWriter();
		 
		 LoginDao dao1= new LoginDao();
		 
		if(dao1.checkEmail(request.getParameter("email"))){
			
			String s ="Email id Already Exist Please Login to Continue";
			 request.setAttribute("errorMessage", s);
			  RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			  rd.forward(request, response);
			
			
				
		}else {
		dao.getData(request.getParameter("fname"), request.getParameter("lname"), request.getParameter("email"), Integer.parseInt(request.getParameter("contact")), request.getParameter("pass"));
	
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
		}
	}



	}


