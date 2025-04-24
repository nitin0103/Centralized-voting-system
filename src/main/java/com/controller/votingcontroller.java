package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.useroperations;
import com.model.votingmodel;

/**
 * Servlet implementation class votingcontroller
 */
@WebServlet("/votingcontroller")
public class votingcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public votingcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String voter_id=request.getParameter("voter_id");
		String voter_name=request.getParameter("voter_name");
		String politician_name=request.getParameter("candidate_name");
		String party=request.getParameter("party");
		
		votingmodel vtm=new votingmodel(voter_id, voter_name, politician_name, party);
		useroperations us=new useroperations();
		int i=us.insertVotingDetails(vtm);
		
		if(i<2)
		{
			HttpSession session=request.getSession();
			session.setAttribute("vote-success", "true");
			response.sendRedirect("votingpanel.jsp");
			/*
			 * System.out.println("succcess");
			 */		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("vote-fail", "true");
			response.sendRedirect("votingpanel.jsp");
			/*
			 * System.out.println("Fail");
			 */		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
