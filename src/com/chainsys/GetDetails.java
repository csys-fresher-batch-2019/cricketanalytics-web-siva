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

import com.csys.dao.PlayerCareerDao;
import com.csys.dao.imp.PlayerCareerDaoImp;
import com.csys.model.PlayerCareer;


@WebServlet("/GetDetails")
public class GetDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String a=request.getParameter("playerName");
		HttpSession session = request.getSession();
		session.setAttribute("Name", a);
		PlayerCareerDao dao = new PlayerCareerDaoImp ();
	    ArrayList <PlayerCareer> pc = new ArrayList <PlayerCareer>();
	    String errorMsg=null;
		try {
			pc = dao.getdetails(a);
			System.out.println(pc.size());
			if(pc.size()!=0){
		    request.setAttribute("a", pc); 
			RequestDispatcher d=request.getRequestDispatcher("display.jsp");
			d.forward(request, response);
			}
			else {
				errorMsg = "Player Not Found";
			    response.sendRedirect("display.jsp?res="+errorMsg);
			}
			} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
