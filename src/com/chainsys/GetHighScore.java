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

import com.csys.dao.imp.PlayerCareerDaoImp;
import com.csys.model.PlayerCareer;


/**
 * Servlet implementation class GetHighScore
 */
@WebServlet("/GetHighScore")
public class GetHighScore extends HttpServlet {
	private static final long serialVersionUID = 1L; 
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String select = request.getParameter ("pick");
		String formats = request.getParameter("format");
		System.out.println(select);
		//request.setAttribute("element", select);
		//request.setAttribute("type", formats);
		HttpSession session = request.getSession();
		session.setAttribute("choice", select); 
		session.setAttribute("Type", formats);
		
		PlayerCareerDaoImp obj = new PlayerCareerDaoImp();
		
		List <PlayerCareer> best = new ArrayList<>();
		
		
			
			try {
				System.out.println(select);
				if(select.equalsIgnoreCase("highscore")) {
				best = obj.listhighScore(formats);
				request.setAttribute("hScore", best);
				RequestDispatcher rd = request.getRequestDispatcher("displayhighscore.jsp");
				rd.forward(request, response);
			}
			else if (select.equalsIgnoreCase("more number of runs")) {
				System.out.println(select);
					best = obj.listruns(formats);
					System.out.println( best.size());
					request.setAttribute("hScore", best);
					RequestDispatcher rd = request.getRequestDispatcher("displaymorenumberofruns.jsp");
					rd.forward(request, response);
			}
						
			        else if(select.equalsIgnoreCase("more number of fifties")) {
			        	System.out.println(select);
					best = obj.listfifties(formats);
					request.setAttribute("hScore", best);
					RequestDispatcher rd = request.getRequestDispatcher("displaymorenumberoffifties.jsp");
					rd.forward(request, response);
				}
			        else  {
			        	System.out.println(select);
					best = obj.listhundred(formats);
					request.setAttribute("hScore", best);
					RequestDispatcher rd = request.getRequestDispatcher("displaymorenumberofhundreds.jsp");
					rd.forward(request, response);
				}
				
		}catch(Exception e){
			e.printStackTrace();
		}
			
		}
}
		
	



