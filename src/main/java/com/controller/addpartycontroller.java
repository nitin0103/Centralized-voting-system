package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.adminoperations;
import com.model.partymodel;

/**
 * Servlet implementation class addpartycontroller
 */
@WebServlet("/addpartycontroller")
public class addpartycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpartycontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int user_id=0;
		int i;
		ArrayList<Integer> list=new ArrayList<Integer>();
		for(i=1;i<5000;i++)
		{
			list.add(new Integer(i));
		}
		Collections.shuffle(list);
		for(i=1;i<2000;i++)
		{
			user_id=list.get(i);
		}
		String party_id=Integer.toString(user_id);
		String party_name=request.getParameter("pname");
		String party_leader=request.getParameter("pleader");
		String party_type=request.getParameter("ptype");
		String party_established=request.getParameter("est");
		String party_activemembers=request.getParameter("activemembers");
		String party_headquarter=request.getParameter("headquarter");


		partymodel pm=new partymodel(party_id, party_name, party_leader, party_type, party_established,party_activemembers, party_headquarter);
		adminoperations aop=new adminoperations();
		int j=aop.addparty(pm);
		if(j<2)
		{
			HttpSession session=request.getSession();
			session.setAttribute("party-status","true");
			response.sendRedirect("partyform.jsp");
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("party-status","false");
			response.sendRedirect("partyform.jsp");
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
