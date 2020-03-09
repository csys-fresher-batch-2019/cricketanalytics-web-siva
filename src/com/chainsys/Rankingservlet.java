package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.dao.imp.PlayerCareerDaoImp;



/**
 * Servlet implementation class Rankingservlet
 */
@WebServlet("/Rankingservlet")
public class Rankingservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String format = request.getParameter("format");
		PlayerCareerDaoImp obj = new PlayerCareerDaoImp();
		try {
			obj.updaterank(format);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
