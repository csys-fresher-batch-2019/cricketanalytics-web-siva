package com.chainsys;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.PlayerProfileDaoImplementation;

/**
 * Servlet implementation class Getcapnoservlet
 */
@WebServlet("/Getcapnoservlet")
public class Getcapnoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name = request.getParameter("playerName");
		PlayerProfileDaoImplementation obj = new PlayerProfileDaoImplementation();
		try {
			String num = obj.getcapno(name);
			request.setAttribute("cap", num);
			RequestDispatcher rd = request.getRequestDispatcher("Updateretiredyear.jsp");
			rd.forward(request, response);
			} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
