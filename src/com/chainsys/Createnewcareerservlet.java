package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.dao.imp.PlayerCareerDaoImp;
import com.csys.dao.imp.PlayerProfileDaoImplementation;



/**
 * Servlet implementation class Createnewcareerservlet
 */
@WebServlet("/Createnewcareerservlet")
public class Createnewcareerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String capNo = request.getParameter("CapNo");
		String name = request.getParameter("PlayerName");
		String nation = request.getParameter("Nation");
		String style = request.getParameter("Batting Style");
		String raey = request.getParameter("Debut Match Year");
		int year = Integer.parseInt(raey);
		
		PlayerProfileDaoImplementation put = new PlayerProfileDaoImplementation();
		PlayerCareerDaoImp obj = new PlayerCareerDaoImp();
			try {
				boolean check = put.validateplayerprofile(capNo);
				if(check) {
					put.addPlayer(capNo, name, nation, style, year);
					obj.createNewCareer(capNo);
					String result = "Successfully added to database";
					response.sendRedirect("Createnewplayer.jsp?res1="+result);
				}
				else {
					String result = "Cap number is already exist.Change the cap number ";
					response.sendRedirect("Createnewplayer.jsp?res="+result);
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		
	}

	
}
