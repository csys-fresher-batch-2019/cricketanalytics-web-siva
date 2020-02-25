package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.DBexception;
import com.csys.MatchDataDaoImp;
import com.csys.PlayerCareerDaoImp;

/**
 * Servlet implementation class Updatecareerservlet
 */
@WebServlet("/Updatecareerservlet")
public class Updatecareerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		MatchDataDaoImp obj = new MatchDataDaoImp();
		
		try {
			obj.updateCareer();
			
		} catch (DBexception e) {

			e.printStackTrace();
		}
	}

	

}
