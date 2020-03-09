package com.chainsys;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csys.dao.PlayerProfileDao;
import com.csys.dao.imp.PlayerProfileDaoImplementation;
import com.csys.model.PlayerProfile;


/**
 * Servlet implementation class Playerlist
 */
@WebServlet("/Playerlist")
public class Playerlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String country = request.getParameter("nation");
		HttpSession session = request.getSession();
		session.setAttribute("b", country);
		PlayerProfileDao dao = new PlayerProfileDaoImplementation ();
	    List <PlayerProfile> pc = new ArrayList <>();
	    try {
			    pc = dao.playerlist(country);
			    request.setAttribute("result", pc);
				RequestDispatcher p = request.getRequestDispatcher("/display1.jsp");
				p.forward(request, response);
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	}

	
}
