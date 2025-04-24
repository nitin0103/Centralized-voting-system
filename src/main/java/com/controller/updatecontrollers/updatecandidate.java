package com.controller.updatecontrollers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.adminoperations;
import com.model.CandidateModel1;

/**
 * Servlet implementation class updatecandidate
 */
@WebServlet("/updatecandidate")
public class updatecandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatecandidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String cid=request.getParameter("candidate_id");
		String name=request.getParameter("cname");
		String adhar=request.getParameter("cadhar");
		String party=request.getParameter("cparty");
		String phone=request.getParameter("cphone");
		String age=request.getParameter("cage");
		String gender=request.getParameter("cgender");
		String address=request.getParameter("caddress");
		
		CandidateModel1 cm=new CandidateModel1(cid, name, adhar, party, phone, age, gender, address);
		
		adminoperations aop=new adminoperations();
		int i=aop.insertupdatedcandidte(cm);
		
		if(i<2)
		{
			HttpSession session=request.getSession();
			System.out.println("Inside session");
			session.setAttribute("update-true","true");
			response.sendRedirect("cnadidate.jsp");
		}
		else
		{
			HttpSession session=request.getSession();
			System.out.println("Inside session");
			session.setAttribute("update-true","false");
			response.sendRedirect("cnadidate.jsp");
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
