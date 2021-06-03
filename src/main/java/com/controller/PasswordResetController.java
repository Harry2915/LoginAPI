package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.ForgotPassDao;
import com.dao.LoginDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class PasswordResetController extends HttpServlet {


 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String pass=(String) request.getParameter("pass");
	String email = request.getParameter("email");
	ForgotPassDao dao= new ForgotPassDao();
	PrintWriter out=response.getWriter();
      System.out.println(email);
	if(dao.resetPass(pass, email)) {
		out.println("success");
	}else
		out.println("failed");
	}

}
