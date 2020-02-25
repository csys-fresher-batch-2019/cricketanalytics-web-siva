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

import com.csys.MatchData;
import com.csys.MatchDataDaoImp;

/**
 * Servlet implementation class Viewmatchsummaryservlet
 */
@WebServlet("/Viewmatchsummaryservlet")
public class Viewmatchsummaryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String status = request.getParameter("status");
		
		HttpSession session = request.getSession();
		session.setAttribute("state",status);
		MatchDataDaoImp obj = new MatchDataDaoImp();
		List<MatchData> list = new ArrayList<>();
		try {
			list=obj.showmatchdetails(status);
			request.setAttribute("view",list);
			RequestDispatcher rd = request.getRequestDispatcher("viewmatchsummary.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}

	}
