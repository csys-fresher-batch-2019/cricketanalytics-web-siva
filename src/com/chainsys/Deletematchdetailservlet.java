package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.MatchDataDaoImp;

/**
 * Servlet implementation class Deletematchdetailservlet
 */
@WebServlet("/Deletematchdetailservlet")
public class Deletematchdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		MatchDataDaoImp obj = new MatchDataDaoImp();
		try{
			obj.deleteMatchDetail();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}
