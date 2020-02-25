package com.chainsys;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csys.PlayerCareer;
import com.csys.PlayerCareerDao;
import com.csys.PlayerCareerDaoImp;

@WebServlet("/GetDetails")
public class GetDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String a=request.getParameter("playerName");
		System.out.println(a);
		HttpSession session = request.getSession();
		session.setAttribute("Player Name", a);
		PlayerCareerDao dao = new PlayerCareerDaoImp ();
	    ArrayList <PlayerCareer> pc = new ArrayList <PlayerCareer>();
		try {
			pc = dao.getdetails(a);
			if(pc!=null) {
		    request.setAttribute("a", pc); 
			RequestDispatcher d=request.getRequestDispatcher("display.jsp");
			d.forward(request, response);
			}
			else {
				String errorMsg = "Invalid Name";
				request.setAttribute("Error", errorMsg);
				RequestDispatcher rd = request.getRequestDispatcher("UserPage.jsp");
				rd.forward(request, response);
			}
			} catch (Exception e) {
			
			System.out.println("Invalid Name");
		}
		
	}

}
