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
import com.model.CandidateModel1;

/**
 * Servlet implementation class addcandidate
 * @param <candidatemodel>
 */
@WebServlet("/addcandidate")
public class addcandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcandidate() {
        
        // TODO Auto-generated constructor stub
    }

	
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
		String candidate_email=Integer.toString(user_id);
		String candidate_name=request.getParameter("name");
		String candidate_aadhar=request.getParameter("Adhar_Card_no");
		String candidate_party=request.getParameter("Password");
		String candidate_phone=request.getParameter("phone_no");
		String candidate_age=request.getParameter("dob");
		String candidate_gender=request.getParameter("optradio");
		String candidate_address=request.getParameter("address");
		


		CandidateModel1 cm12 =new CandidateModel1(candidate_email,candidate_name, candidate_aadhar, candidate_party, candidate_phone, candidate_age, candidate_gender, candidate_address);
		adminoperations aoper=new adminoperations();
		int j=aoper.addcandidate(cm12);
		if(j>0)
		{
			HttpSession session=request.getSession();
			session.setAttribute("candidate-status", "true");
			System.out.println("Inside session");
			response.sendRedirect("candidate-sign-up.jsp");
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
