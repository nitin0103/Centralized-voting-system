package com.controller.updatecontrollers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.adminoperations;
import com.model.partymodel;

/**
 * Servlet implementation class updateparty
 */
@WebServlet("/updateparty")
public class updateparty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateparty() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside servlet");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String pid=request.getParameter("party_id");
		String pname=request.getParameter("pname");
		String pleader=request.getParameter("pleader");
		String ptype=request.getParameter("ptype");
		String members=request.getParameter("activemembers");
		String esdate=request.getParameter("est");

		String head=request.getParameter("head");
		
		System.out.println(pid);
		System.out.println(esdate);
		partymodel pm=new partymodel(pid, pname, pleader, ptype, members, esdate, head);
		System.out.println(pm.getParty_id());
		adminoperations aop=new adminoperations();
		int i=aop.insertupdatedparty(pm);
		
		if(i<2)
		{
			HttpSession session=request.getSession();
			session.setAttribute("party-success", "true");
			response.sendRedirect("partys.jsp");
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("party-success", "false");
			response.sendRedirect("partys.jsp");
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
