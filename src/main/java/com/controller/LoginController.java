package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		  if(dao.checkPass(request.getParameter("pass"))) {
		    RequestDispatcher rd = request.getRequestDispatcher("RegistrationDisplay.jsp");
	          rd.forward(request, response);
		  }else
			  out.println("Incorrect Password");
	}else
		
		  out.println("Email id does not exist");
      
		
		}
	  
	  }
	

