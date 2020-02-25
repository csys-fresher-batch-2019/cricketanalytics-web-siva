package com.chainsys;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String a = request.getParameter("Username");
		String b = request.getParameter("password");
		if(a.equals("Admin") && b.equals("cricket")) {
		RequestDispatcher d = request.getRequestDispatcher("AdminPage.jsp");
		d.forward(request, response);
		}else {
		String result = "Invalid Username / Password";
		response.sendRedirect("Login.jsp?res=" + result);

	
	
		}	
	}
	}

	


