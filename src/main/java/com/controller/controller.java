package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.useroperations;

/**
 * Servlet implementation class controller
 */
@WebServlet("/controller")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession session;
		useroperations us=new useroperations();
		ResultSet rs=null;
		rs=us.checkLoginDetails(username, password);
		

		try {
			if(rs.next())
			{
				

//				System.out.println("Valid details");
				HttpSession session1=request.getSession();
				session1.setAttribute("voter_id",rs.getString(1));
				int i=us.insert(rs,username);

				if(i<2)
				{
					session=request.getSession();
					session.setAttribute("login-status", "true");

					response.sendRedirect("userdashboard.jsp");
				}
				else
				{
					session=request.getSession();
					session.setAttribute("already-login-status", "true");

					response.sendRedirect("userlogin.jsp");
				}
				
				
			}
			else
			{
				session=request.getSession();
				session.setAttribute("login-status", "false");
				response.sendRedirect("userlogin.jsp");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
