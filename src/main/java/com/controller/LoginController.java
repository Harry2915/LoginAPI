package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import com.dao.LoginDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   LoginDao dao = new LoginDao();
	   PrintWriter out = response.getWriter();
	   
		HttpSession session = request.getSession();
		session.setAttribute("email", request.getParameter("email"));
	   
	
     
	  if( dao.checkEmail(request.getParameter("email"))) {
		  if(dao.checkPass(request.getParameter("pass"),request.getParameter("email"))) {
		    RequestDispatcher rd = request.getRequestDispatcher("RegistrationDisplay.jsp");
	          rd.forward(request, response);
		  }else {
			//  l.add("Incorrect Password");
			  String s1="Incorrect Password";
			  request.setAttribute("errorMessage", s1);
			  RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			  rd.forward(request, response);
		  }
	}else {
	//	l.add("Email does not exist");
		String s= "Email id not Registered";
		  request.setAttribute("errorMessage",s );
		  RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		  rd.forward(request, response);
      
	}
	  
//	  if(!l.isEmpty()) {
//		  request.setAttribute("errorMessage", l);
//		  RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//		  rd.forward(request, response);
//	  }
	  
	  
		}
	  
	  }
	

