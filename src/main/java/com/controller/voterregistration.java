package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.adminoperations;
import com.dao.useroperations;
import com.model.Voterregistration;

/**
 * Servlet implementation class userregistrationController
 */
@WebServlet("/voterregistration")
public class voterregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public voterregistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*
		 * Hello
		 */		int user_id=0;
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
		
//		System.out.println(user_id);
		
		String voter_id=Integer.toString(user_id);
		String voter_name=request.getParameter("name");
		String voter_email=request.getParameter("email");
		String voter_adharNo=request.getParameter("Adhar_Card no");
		String voter_phoneNO=request.getParameter("phone no");
		String voter_gender=request.getParameter("optradio");
//		String voter_username=request.getParameter("Username");
		String voter_password=request.getParameter("Password");
		String voter_dob=request.getParameter("dob");
//		String voter_age=request.getParameter("age");
		String voter_address=request.getParameter("address");
		
		/*
		 * System.out.println(voter_id); System.out.println(voter_name);
		 * System.out.println(voter_email); System.out.println(voter_adharNo);
		 * System.out.println(voter_phoneNO); System.out.println(voter_gender); //
		 * System.out.println(voter_username); System.out.println(voter_password);
		 * System.out.println(voter_dob); System.out.println(voter_address); //
		 * System.out.println(voter_id);
		 */
		
		useroperations us=new useroperations();
		ResultSet rs=us.displayVoters(voter_email);
		try {
			if(rs.next())
			{
				
				HttpSession session=request.getSession();
				session.setAttribute("already-registered", "true");
				response.sendRedirect("usersignup.jsp");
			}
			else
			{
				Voterregistration vtr=new Voterregistration(voter_id, voter_name, voter_email, voter_adharNo, voter_dob, "45", voter_gender, voter_password, voter_phoneNO, voter_address);
				int cnt=us.voter_registration(vtr);
				
				if(cnt>0)
				{
					HttpSession session=request.getSession();
					
					session.setAttribute("registration_status","true");
					response.sendRedirect("usersignup.jsp");
				}
			}
		}catch (Exception e) {
System.out.println(e);
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
