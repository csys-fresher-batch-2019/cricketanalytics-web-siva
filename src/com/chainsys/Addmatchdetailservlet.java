package com.chainsys;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csys.MatchDataDaoImp;
import com.csys.PlayerCareerDaoImp;
import com.csys.PlayerProfileDaoImplementation;

/**
 * Servlet implementation class Addmatchdetailservlet
 */
@WebServlet("/Addmatchdetailservlet")
public class Addmatchdetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String capno = request.getParameter("cap");
		String format = request.getParameter("type");
		String runs = request.getParameter("runs");
		int run = Integer.parseInt(runs);
		PlayerCareerDaoImp obj = new PlayerCareerDaoImp();
		PlayerProfileDaoImplementation object = new PlayerProfileDaoImplementation();
		MatchDataDaoImp obj1 = new MatchDataDaoImp();
		try {
			boolean res = obj.validateplayercareer(capno, format);
			if(res) {
				boolean reset = object.validateretiredplayer(capno);
				if(reset) {
					String result = "Entered cap number is a retired player one";
					response.sendRedirect("addmatchdetail.jsp?res="+result);
				}else {
				obj1.addMatchDetail(capno, format, run);
				String result = "Successfully added to database";
				response.sendRedirect("addmatchdetail.jsp?res1="+result);	
				}}else {
				String result = "Enter a valid cap number";
				response.sendRedirect("addmatchdetail.jsp?res="+result);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
