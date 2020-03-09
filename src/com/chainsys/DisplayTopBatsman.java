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

import com.csys.dao.PlayerCareerDao;
import com.csys.dao.imp.PlayerCareerDaoImp;
import com.csys.model.PlayerCareer;



/**
 * Servlet implementation class DisplayTopBatsman
 */
@WebServlet("/DisplayTopBatsman")
public class DisplayTopBatsman extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n = 5;
		String type = request.getParameter("format");
		HttpSession session = request.getSession();
		session.setAttribute("matchtype", type);
		PlayerCareerDao dao = new PlayerCareerDaoImp ();
		List <PlayerCareer> pc = new ArrayList <PlayerCareer>();
		try {
			pc=dao.displaytopbatsman(type,n);
			request.setAttribute("result", pc);
			RequestDispatcher d=request.getRequestDispatcher("ShowTopBatsman.jsp");
			d.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	}
