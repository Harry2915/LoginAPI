package com.controller;

import java.io.IOException;

import com.dao.LoginDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class PasswordResetController extends HttpServlet {


 


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String email=request.getParameter("email");
		 LoginDao dao = new LoginDao();
		 HttpSession session = request.getSession();
		 if( dao.checkEmail(request.getParameter("email"))) {
			 request.setAttribute("email", email);
			 RequestDispatcher rd = request.getRequestDispatcher("ResetPass.jsp");
	          rd.forward(request, response);
			 
		 }else {
			 String s= "Email id not Registered";
			  request.setAttribute("errorMessage",s );
			  RequestDispatcher rd = request.getRequestDispatcher("VerifyEmail.jsp");
			  rd.forward(request, response);
		 }
	}

}
