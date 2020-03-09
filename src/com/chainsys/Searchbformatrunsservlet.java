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

import com.csys.dao.PlayerCareerDao;
import com.csys.dao.imp.PlayerCareerDaoImp;
import com.csys.model.formatruns;



/**
 * Servlet implementation class Searchbformatrunsservlet
 */
@WebServlet("/Searchbformatrunsservlet")
public class Searchbformatrunsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String formats = request.getParameter("format");
		String runs = request.getParameter("runs");
		int run = Integer.parseInt(runs);
		PlayerCareerDao dao = new PlayerCareerDaoImp ();
	    List<formatruns> fruns = null;
	   
	    	try {
				fruns = dao.searchbyformatruns(formats, run);
				if(fruns.size()!=0) {
		    		request.setAttribute("frunslist",fruns);
		    		RequestDispatcher RD = request.getRequestDispatcher("ShowSearchbyformatruns.jsp");
		    		RD.forward(request, response);
			}else {
				String result = "None of the players cross the run mark";
				response.sendRedirect("Searchbyformatruns.jsp?res="+result);
			}
				} catch (Exception e) {
				
				e.printStackTrace();
			}
	    	
	    	}
	    		}   	
   	
	    	