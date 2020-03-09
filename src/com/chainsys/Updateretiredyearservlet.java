package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.dao.imp.PlayerProfileDaoImplementation;



/**
 * Servlet implementation class Updateretiredyearservlet
 */
@WebServlet("/Updateretiredyearservlet")
public class Updateretiredyearservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String capno =request.getParameter("capno");
		String ryear = request.getParameter("retyear");
		int year = Integer.parseInt(ryear);
		
		PlayerProfileDaoImplementation object = new PlayerProfileDaoImplementation();
		
			boolean res;
			try {
				res = object.validateplayerprofile(capno);
				if(res) {
					String result = "Enter a valid cap number";
					response.sendRedirect("Updateretiredyear.jsp?res="+result);
				}else {
					object.updateRetiredYear(capno, year);
					String result = "update succesfully";
					response.sendRedirect("Updateretiredyear.jsp?res1="+result);
					}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			}
		} 
	


